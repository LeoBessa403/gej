<?php

/**
 * InscricaoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  InscricaoService extends AbstractService
{
    private $ObjetoModel;
    private $PDO;

    public function __construct()
    {
        parent::__construct(InscricaoEntidade::ENTIDADE);
        $this->ObjetoModel = New InscricaoModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    public function salvarInscricao($dados, $foto, $coInscricao = false)
    {
        $this->PDO = $this->getPDO();

        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);
        $retorno = [
            SUCESSO => true,
            MSG => null
        ];
        $endereco = $enderecoService->getDados($dados, EnderecoEntidade::ENTIDADE);
        $contato = $contatoService->getDados($dados, ContatoEntidade::ENTIDADE);
        $inscricao = $this->getDados($dados, InscricaoEntidade::ENTIDADE);
        $inscricao[ST_STATUS] = StatusAcessoEnum::ATIVO;
        $pessoa = $pessoaService->getDados($dados, PessoaEntidade::ENTIDADE);

        $endereco[SG_UF] = $dados[SG_UF][0];

        $pessoa[NO_PESSOA] = strtoupper(trim($dados[NO_PESSOA]));
        $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
        $pessoa[ST_SEXO] = $dados[ST_SEXO][0];

        $erro = false;
        $Campo = array();
        /** @var InscricaoEntidade $inscricoes */
        $inscricoes = $this->PesquisaTodos();

        /** @var InscricaoEntidade $insc */
        foreach ($inscricoes as $insc) {
            if ((!$coInscricao) || ($coInscricao && $insc->getCoInscricao() != $coInscricao)) {
                if ($insc->getCoPessoa()->getNoPessoa() == $pessoa[NO_PESSOA]) {
                    $Campo[] = "Nome do Usuário";
                    $erro = true;
                }
                if ($insc->getCoPessoa()->getCoContato()->getDsEmail() == $contato[DS_EMAIL]) {
                    $Campo[] = "E-mail";
                    $erro = true;
                }
                if ($insc->getCoPessoa()->getNuCpf() == $pessoa[NU_CPF]) {
                    $Campo[] = "CPF";
                    $erro = true;
                }
                if ($erro) {
                    break;
                }
            }
        }

        if ($erro):
            $retorno[MSG] = "Já exite uma inscrição realizada com o mesmo "
                . implode(", ", $Campo) . ", em caso de dúvidas entrar em contato com a comissão do retiro.";
            $retorno[SUCESSO] = false;
        else:
            $inscricao[DS_MEMBRO_ATIVO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[DS_MEMBRO_ATIVO])) ? $dados[DS_MEMBRO_ATIVO] : null
            );
            $inscricao[DS_RETIRO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[DS_RETIRO])) ? $dados[DS_RETIRO] : null
            );
            $inscricao[NU_CAMISA] = $dados[NU_CAMISA][0];
            $inscricao[NO_RESPONSAVEL] = strtoupper($dados[NO_RESPONSAVEL]);

            $imagem[DS_CAMINHO] = "";
            if ($foto[DS_CAMINHO]["tmp_name"]):
                $foto = $_FILES[DS_CAMINHO];
                $nome = Valida::ValNome($dados[NO_PESSOA]);
                $up = new Upload();
                $up->UploadImagens($foto, $nome, "inscricoes");
                $imagem[DS_CAMINHO] = $up->getNameImage();
            endif;

            $this->PDO->beginTransaction();
            if (!$coInscricao) {
                $pessoa[CO_ENDERECO] = $enderecoService->Salva($endereco);
                $pessoa[CO_CONTATO] = $contatoService->Salva($contato);

                $inscricao[ST_EQUIPE_TRABALHO] = SimNaoEnum::NAO;
                $inscricao[CO_PESSOA] = $pessoaService->Salva($pessoa);

                $inscricao[CO_IMAGEM] = $imagemService->Salva($imagem);

                $retorno[CO_INSCRICAO] = $this->Salva($inscricao);
            } else {
                /** @var InscricaoEntidade $inscricaoEdicao */
                $inscricaoEdicao = $this->PesquisaUmRegistro($coInscricao);

                $enderecoService->Salva($endereco, $inscricaoEdicao->getCoPessoa()->getCoEndereco()->getCoEndereco());
                $contatoService->Salva($contato, $inscricaoEdicao->getCoPessoa()->getCoContato()->getCoContato());
                if (!empty($foto["tmp_name"])):
                    $imagemService->Salva($imagem, $inscricaoEdicao->getCoImagem()->getCoImagem());
                endif;
                unset($pessoa[DT_CADASTRO]);
                $pessoaService->Salva($pessoa, $inscricaoEdicao->getCoPessoa()->getCoPessoa());
                $inscricao[ST_EQUIPE_TRABALHO] = FuncoesSistema::retornoCheckbox(
                    (!empty($dados[ST_EQUIPE_TRABALHO])) ? $dados[ST_EQUIPE_TRABALHO] : null
                );
                unset($inscricao[DT_CADASTRO]);
                $retorno[CO_INSCRICAO] = $this->Salva($inscricao, $coInscricao);
            }
            if ($retorno[CO_INSCRICAO]) {
                $retorno[MSG] = Mensagens::OK_SALVO;
                $retorno[SUCESSO] = true;
                $this->PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível cadastrar a Inscrição';
                $retorno[SUCESSO] = false;
                $this->PDO->rollBack();
            }
        endif;
        return $retorno;
    }

}
<?php

class MembroWeb extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $formas;
    public $coInscricao;
    public $inscDuplicada;

    function CadastroRetiroCarnaval()
    {
        $id = "CadastroRetiroCarnaval";

        if (!empty($_POST[$id])):
            $this->salvarInscricao($_POST, $_FILES);
        endif;

        $this->form = MembroWebForm::Cadastrar();
    }

    static function montaComboCamisas()
    {
        return array(
            "" => "Selecione um Tamanho",
            "1" => "BL PP",
            "2" => "BL P",
            "3" => "BL M",
            "4" => "BL G",
            "5" => "BL GG",
            "6" => "P",
            "7" => "M",
            "8" => "G",
            "9" => "GG"
        );
    }

    function FormaDePagamento()
    {
        $this->coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);
        $this->formas = Inscricao::FormasDePagamento();
    }

    function ConcluirInscricao()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);
        $id = "formaPagamento";

        if (!empty($_POST[$id])):
            $dados = $_POST;
            $pagamento[NU_TOTAL] = '150.00';
            if ($dados[CO_TIPO_PAGAMENTO] == TipoPagamentoEnum::CARTAO_CREDITO) {
                $pagamento[NU_TOTAL] = '160.00';
            }

            $pagamento[NU_PARCELAS] = 1;
            $temPagamento = $pagamentoService->PesquisaUmQuando([CO_INSCRICAO => $dados[CO_INSCRICAO]]);
            if (!empty($temPagamento)) {
                $parcela[CO_PAGAMENTO] = $pagamentoService->Salva($pagamento, $dados[CO_INSCRICAO]);
                $parcelamentoService->DeletaQuando([CO_PAGAMENTO => $parcela[CO_PAGAMENTO]]);
            } else {
                $pagamento[CO_INSCRICAO] = $dados[CO_INSCRICAO];
                $parcela[CO_PAGAMENTO] = $pagamentoService->Salva($pagamento);
            }

            $parcela[CO_TIPO_PAGAMENTO] = $dados[CO_TIPO_PAGAMENTO];
            $parcela[NU_PARCELA] = 1;
            $parcela[NU_VALOR_PARCELA] = $pagamento[NU_TOTAL];
            $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

            $parcelamentoService->Salva($parcela);
        endif;
    }

    public function salvarInscricao($dados, $foto)
    {
        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);

        $endereco = $enderecoService->getDados($dados, EnderecoEntidade::ENTIDADE);
        $contato = $contatoService->getDados($dados, ContatoEntidade::ENTIDADE);
        $inscricao = $inscricaoService->getDados($dados, InscricaoEntidade::ENTIDADE);
        $pessoa = $pessoaService->getDados($dados, PessoaEntidade::ENTIDADE);

        $endereco[SG_UF] = $dados[SG_UF][0];

        $pessoa[NO_PESSOA] = strtoupper(trim($dados[NO_PESSOA]));
        $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
        $pessoa[ST_SEXO] = $dados[ST_SEXO][0];

        $erro = false;
        $Campo = array();
        /** @var InscricaoEntidade $inscricoes */
        $inscricoes = $inscricaoService->PesquisaTodos();

        /** @var InscricaoEntidade $insc */
        foreach ($inscricoes as $insc) {
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

        if ($erro):
            $this->inscDuplicada = "Já exite uma inscrição realizada com o mesmo "
                . implode(", ", $Campo) . ", em caso de dúvidas entrar em contato com a comissão do retiro.";
        else:
            $pessoa[CO_ENDERECO] = $enderecoService->Salva($endereco);
            $pessoa[CO_CONTATO] = $contatoService->Salva($contato);

            $inscricao[CO_PESSOA] = $pessoaService->Salva($pessoa);
            $inscricao[DS_MEMBRO_ATIVO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[DS_MEMBRO_ATIVO])) ? $dados[DS_MEMBRO_ATIVO] : null
            );
            $inscricao[DS_RETIRO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[DS_RETIRO])) ? $dados[DS_RETIRO] : null
            );
            $inscricao[NU_CAMISA] = $dados[NU_CAMISA][0];
            $inscricao[ST_EQUIPE_TRABALHO] = SimNaoEnum::NAO;
            $inscricao[NO_RESPONSAVEL] = strtoupper($dados[NO_RESPONSAVEL]);

            $imagem[DS_CAMINHO] = "";
            if ($foto[DS_CAMINHO]["tmp_name"]):
                $foto = $_FILES[DS_CAMINHO];
                $nome = Valida::ValNome($dados[NO_PESSOA]);
                $up = new Upload();
                $up->UploadImagens($foto, $nome, "inscricoes");
                $imagem[DS_CAMINHO] = $up->getNameImage();
            endif;
            $inscricao[CO_IMAGEM] = $imagemService->Salva($imagem);


            debug($inscricao);
            $coInscricao = $inscricaoService->Salva($inscricao);

            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormaDePagamento/' .
                Valida::GeraParametro(CO_INSCRICAO . '/' . $coInscricao));
        endif;


    }
}
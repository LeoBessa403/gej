<?php

class Inscricoes extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $formas;
    public $coInscricao;
    public $inscDuplicada;

    function CadastroRetiro()
    {
        $this->inscDuplicada = false;
        $id = "CadastroRetiro";
        $id2 = "ValidacaoPessoa";

        if (!empty($_POST[$id])) {
            /** @var InscricaoService $inscricaoService */
            $inscricaoService = $this->getService(INSCRICAO_SERVICE);
            $retorno = $inscricaoService->salvarInscricao($_POST, $_FILES);

            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormaDePagamento/' .
                    Valida::GeraParametro(CO_INSCRICAO . '/' . $retorno[CO_INSCRICAO]));
            } else {
                $this->inscDuplicada = $retorno[MSG];
                $this->form = InscricoesForm::Cadastrar();
            }
        } elseif (!empty($_POST[$id2])) {
            $PessoaValidador = new PessoaValidador();
            /** @var InscricaoValidador $validador */
            $validador = $PessoaValidador->validarCPF($_POST);
            if ($validador[SUCESSO]) {
                /** @var PessoaService $pessoaService */
                $pessoaService = static::getService(PESSOA_SERVICE);
                /** @var PessoaEntidade $pessoa */
                $pessoa = $pessoaService->PesquisaUmQuando([
                    NU_CPF => Valida::RetiraMascara($_POST[NU_CPF])
                ]);
                $res = [];
                if (!empty($pessoa)) {
                    $ja_inscrito = false;
                    if ($pessoa->getCoInscricao()) {
                        /** @var InscricaoEntidade $inscricao */
                        foreach ($pessoa->getCoInscricao() as $inscricao) {
                            if ($inscricao->getCoEvento()->getCoEvento() == InscricaoEnum::EVENTO_ATUAL) {
                                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller .
                                    '/CadastroAbastecimento/' . Valida::GeraParametro(CO_INSCRICAO . '/U'));
                            }
                        }
                    }
                    if (!$ja_inscrito) {
                        $res = $pessoaService->getArrayDadosPessoa($pessoa, $res);

                        /** @var EnderecoService $enderecoService */
                        $enderecoService = $this->getService(ENDERECO_SERVICE);
                        $res = $enderecoService->getArrayDadosEndereco($pessoa->getCoEndereco(), $res);

                        /** @var ContatoService $contatoService */
                        $contatoService = $this->getService(CONTATO_SERVICE);
                        $res = $contatoService->getArrayDadosContato($pessoa->getCoContato(), $res);
                        if (!empty($pessoa->getCoInscricao())) {
                            /** @var InscricaoEntidade $inscric */
                            foreach ($pessoa->getCoInscricao() as $inscric){
                                if ($inscric->getCoImagem()->getDsCaminho()):
                                    if(file_exists( PASTA_RAIZ . PASTAUPLOADS . "inscricoes/" .
                                        $pessoa->getUltimaCoInscricao()->getCoImagem()->getDsCaminho())){
                                        $res[DS_CAMINHO] = "inscricoes/" . $pessoa->getUltimaCoInscricao()->getCoImagem()->getDsCaminho();
                                        $res[CO_IMAGEM] = $pessoa->getUltimaCoInscricao()->getCoImagem()->getCoImagem();
                                    }
                                endif;
                            }
                        }
                    }
                } else {
                    $res[NU_CPF] = $_POST[NU_CPF];
                }
                $res[DS_MEMBRO_ATIVO] = '';
                $res[DS_RETIRO] = '';
                $res['ds_pastoral_ativo'] = '';
                $this->form = InscricoesForm::Cadastrar($res);
            } else {
                $session = new Session();
                $session->setSession(MENSAGEM, $validador[MSG]);
                $this->form = PessoaForm::ValidarCPF('Inscricoes/CadastroAbastecimento');
            }
        } else {
            $insc = UrlAmigavel::PegaParametro(CO_INSCRICAO);
            if ($insc)
                $this->inscDuplicada = Mensagens::INSCRICAO_JA_CADASTRADA;

            $this->form = PessoaForm::ValidarCPF('Inscricoes/CadastroAbastecimento', 6);
        }

    }

    function FormaDePagamento()
    {
        $this->coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);
        $this->formas = TipoPagamentoService::montaComboTodosTipoPagamento();
    }

    function ConcluirInscricao()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);
        $id = "formaPagamento";
        /** @var PDO $PDO */
        $PDO = $parcelamentoService->getPDO();
        $PDO->beginTransaction();

        if (!empty($_POST[$id])):
            $dados = $_POST;
            $pagamento[NU_TOTAL] = InscricaoEnum::VALOR_DINHEIRO;
            if ($dados[CO_TIPO_PAGAMENTO] == TipoPagamentoEnum::CARTAO_CREDITO) {
                $pagamento[NU_TOTAL] = InscricaoEnum::VALOR_CARTAO;
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

            $retorno = $parcelamentoService->Salva($parcela);
            if ($retorno) {
                $PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível Concluir a Inscrição';
                $PDO->rollBack();
            }
        endif;
    }

    public function Normas()
    {
    }

    public function SobrePagamento()
    {
    }

    public function VerInscricao()
    {
        $id = "ValidacaoInscricao";

        if (!empty($_POST[$id])):
            /** @var InscricaoService $inscricaoService */
            $inscricaoService = $this->getService(INSCRICAO_SERVICE);
            $inscricao = $inscricaoService->PesquisaAvancada([
                "pes." . NU_CPF => Valida::RetiraMascara($_POST[NU_CPF]),
                "insc." . CO_EVENTO => InscricaoEnum::EVENTO_ATUAL
            ]);
            if ($inscricao) {
                /** @var InscricaoEntidade $inscricao */
                $this->result = $inscricao[0];
            } else {
                $this->inscDuplicada = Mensagens::INSCRICAO_NAO_REALIZADA;
                $this->form = InscricoesForm::ValidarInscricao();
            }
        else:
            $this->form = InscricoesForm::ValidarInscricao();
        endif;
    }
}
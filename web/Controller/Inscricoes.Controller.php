<?php

class Inscricoes extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $formas;
    public $coInscricao;
    public $inscDuplicada;

    function CadastroAbastecimento()
    {
        $this->inscDuplicada = false;
        $id = "CadastroAbastecimento";
        $id2 = "ValidacaoPessoa";

        if (!empty($_POST[$id])) {
            debug('ESTAMOS EM FASE DE TESTES, FAVOR AGUARDAR O MOMENTO CERTO, APRESSADO (A).');
            /** @var InscricaoService $inscricaoService */
            $inscricaoService = $this->getService(INSCRICAO_SERVICE);
            $retorno = $inscricaoService->salvarInscricao($_POST, $_FILES);

            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/FormaDePagamento/' .
                    Valida::GeraParametro(CO_INSCRICAO . '/' . $retorno[CO_INSCRICAO]));
            } else {
                $this->inscDuplicada = $retorno[MSG];
                $res = $inscricaoService->montaDadosInscricao($_POST);
                $this->form = InscricoesForm::Cadastrar(false, $res);
            }
        } elseif (!empty($_POST[$id2])) {
            $indexValidador = new IndexValidador();
            /** @var InscricaoValidador $validador */
            $validador = $indexValidador->validarCPF($_POST);
            if ($validador[SUCESSO]) {
                /** @var PessoaService $pessoaService */
                $pessoaService = static::getService(PESSOA_SERVICE);
                /** @var PessoaEntidade $pessoa */
                $pessoa = $pessoaService->PesquisaUmQuando([
                    NU_CPF => Valida::RetiraMascara($_POST[NU_CPF])
                ]);
                $res = [];
                if (!empty($pessoa)) {
                    $res = $pessoaService->getArrayDadosPessoa($pessoa, $res);

                    /** @var EnderecoService $enderecoService */
                    $enderecoService = $this->getService(ENDERECO_SERVICE);
                    $res = $enderecoService->getArrayDadosEndereco($pessoa->getCoEndereco(), $res);

                    /** @var ContatoService $contatoService */
                    $contatoService = $this->getService(CONTATO_SERVICE);
                    $res = $contatoService->getArrayDadosContato($pessoa->getCoContato(), $res);
                    if ($pessoa->getCoInscricao()) {
                        if ($pessoa->getCoInscricao()->getCoImagem()->getDsCaminho()):
                            $res[DS_CAMINHO] = "inscricoes/" . $pessoa->getCoInscricao()->getCoImagem()->getDsCaminho();
                            $res[CO_IMAGEM] = $pessoa->getCoInscricao()->getCoImagem()->getCoImagem();
                        endif;
                    }
                    $res[DS_MEMBRO_ATIVO] = '';
                    $res[DS_RETIRO] = '';
                    $res['ds_pastoral_ativo'] = '';
                } else {
                    $res[NU_CPF] = $_POST[NU_CPF];
                }
                $this->form = InscricoesForm::Cadastrar(false, $res);
            } else {
                $session = new Session();
                $session->setSession(MENSAGEM, $validador[MSG]);
                $this->form = PessoaForm::ValidarCPF('Inscricoes/CadastroAbastecimento');
            }
        } else {
            $this->form = PessoaForm::ValidarCPF('Inscricoes/CadastroAbastecimento', 6);
        }

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
            "9" => "GG",
            "10" => "XG",
        );
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
}
<?php

/**
 * FluxoCaixaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FluxoCaixaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FluxoCaixaEntidade::ENTIDADE);
        $this->ObjetoModel = New FluxoCaixaModel();
    }

    public function salvaFluxoCaixa($result)
    {
        $session = new Session();
        $fluxoCaixaValidador = new FluxoCaixaValidador();
        /** @var FluxoCaixaValidador $validador */
        $validador = $fluxoCaixaValidador->validarFluxoCaixa($result);
        if ($validador[SUCESSO]) {
            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            /** @var AdministrativoService $administrativoService */
            $administrativoService = $this->getService(ADMINISTRATIVO_SERVICE);
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];

            $dados[DS_DESCRICAO] = trim($result[DS_DESCRICAO]);
            if (!empty($result[TP_FLUXO])) {
                $dados[TP_FLUXO] = FluxoCaixaEnum::FLUXO_ENTRADA;
            } else {
                $dados[TP_FLUXO] = FluxoCaixaEnum::FLUXO_SAIDA;
            }
            $dados[NU_VALOR] = Valida::FormataMoedaBanco($result[NU_VALOR]);
            $dados[DT_REALIZADO] = Valida::DataDB($result[DT_REALIZADO]);
            $dados[DT_VENCIMENTO] = Valida::DataDB($result[DT_VENCIMENTO]);
            $dados[ST_PAGAMENTO] = $result[ST_PAGAMENTO][0];

            $PDO->beginTransaction();
            if (!empty($result[CO_FLUXO_CAIXA])):
                $coFluxoCaixa = $result[CO_FLUXO_CAIXA];
                /** @var FluxoCaixaEntidade $fluxo */
                $fluxo = $this->PesquisaUmRegistro($coFluxoCaixa);
                if ($dados[ST_PAGAMENTO] == StatusPagamentoEnum::CONCLUIDO &&
                    $fluxo->getStPagamento() != StatusPagamentoEnum::CONCLUIDO) {
                    $administrativoService->atualizaFluxoCaixa($dados[NU_VALOR], $dados[TP_FLUXO]);
                }
                $this->Salva($dados, $coFluxoCaixa);
                $retorno[MSG] = Mensagens::OK_ATUALIZADO;
                $session->setSession(ATUALIZADO, "OK");
            else:
                if ($dados[ST_PAGAMENTO] == StatusPagamentoEnum::CONCLUIDO) {
                    $administrativoService->atualizaFluxoCaixa($dados[NU_VALOR], $dados[TP_FLUXO]);
                }
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $coFluxoCaixa = $this->Salva($dados);
                $retorno[MSG] = Mensagens::OK_SALVO;
                $session->setSession(CADASTRADO, "OK");
            endif;
            if ($coFluxoCaixa):
                $retorno[SUCESSO] = true;
                $PDO->commit();
            else:
                $session->setSession(MENSAGEM, 'Não foi possível salvar o Fluxo de Caixa');
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            endif;
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

}
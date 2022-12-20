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
            $dados[CO_EVENTO] = (count($result[CO_EVENTO][0])) ? $result[CO_EVENTO][0] : null;

            $PDO->beginTransaction();
            if (!empty($result[CO_FLUXO_CAIXA])):
                $coFluxoCaixa = $result[CO_FLUXO_CAIXA];
                /** @var FluxoCaixaEntidade $fluxo */
                $fluxo = $this->PesquisaUmRegistro($coFluxoCaixa);
                if ($dados[ST_PAGAMENTO] == SituacaoPagamentoEnum::CONCLUIDO &&
                    $fluxo->getStPagamento() != SituacaoPagamentoEnum::CONCLUIDO) {
                    $administrativoService->atualizaFluxoCaixa($dados[NU_VALOR], $dados[TP_FLUXO]);
                }
                $this->Salva($dados, $coFluxoCaixa);
                $retorno[MSG] = Mensagens::OK_ATUALIZADO;
                $session->setSession(MENSAGEM, ATUALIZADO);
            else:
                if ($dados[ST_PAGAMENTO] == SituacaoPagamentoEnum::CONCLUIDO) {
                    $administrativoService->atualizaFluxoCaixa($dados[NU_VALOR], $dados[TP_FLUXO]);
                }
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $coFluxoCaixa = $this->Salva($dados);
                $retorno[MSG] = Mensagens::OK_SALVO;
                $session->setSession(MENSAGEM, CADASTRADO);
            endif;
            if ($coFluxoCaixa):
                $retorno[SUCESSO] = true;
                $PDO->commit();
            else:
                Notificacoes::geraMensagem(
                    'Não foi possível realizar a ação',
                    TiposMensagemEnum::ERRO
                );
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            endif;
        } else {
            Notificacoes::geraMensagem(
                $validador[MSG],
                TiposMensagemEnum::ALERTA
            );
            $retorno = $validador;
        }
        return $retorno;
    }

}
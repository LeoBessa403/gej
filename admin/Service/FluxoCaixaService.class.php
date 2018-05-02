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
            $administrativoService->atualizaFluxoCaixa($dados[NU_VALOR], $dados[TP_FLUXO]);
            if (!empty($result[CO_FLUXO_CAIXA])):
                $coFluxoCaixa = $result[CO_FLUXO_CAIXA];
                $this->Salva($dados, $coFluxoCaixa);
                if ($coFluxoCaixa):
                    $retorno[MSG] = Mensagens::OK_ATUALIZADO;
                    $retorno[SUCESSO] = true;
                    $session->setSession(ATUALIZADO, "OK");
                    $PDO->commit();
                endif;
            else:
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $coFluxoCaixa = $this->Salva($dados);
                if ($coFluxoCaixa):
                    $retorno[MSG] = Mensagens::OK_SALVO;
                    $retorno[SUCESSO] = true;
                    $session->setSession(CADASTRADO, "OK");
                    $PDO->rollBack();
                endif;
            endif;
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }

}
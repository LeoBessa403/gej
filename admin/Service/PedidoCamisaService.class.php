<?php

/**
 * PedidoCamisaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PedidoCamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PedidoCamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New PedidoCamisaModel();
    }

    public function salvaPedidoCamisa($result)
    {
        $session = new Session();
        $pedidoCamisaValidador = new PedidoCamisaValidador();
        /** @var CamisaValidador $validador */
        $validador = $pedidoCamisaValidador->validarPedidoCamisa($result);
        if ($validador[SUCESSO]) {
            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            /** @var PedCamTamanhoCorService $pedCamTamanhoCorService */
            $pedCamTamanhoCorService = $this->getService(PED_CAM_TAMANHO_COR_SERVICE);
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];
            $camisaPedido[NO_PESSOA] = trim($result[NO_PESSOA]);
            $camisaPedido[ST_ESTOQUE] = (!empty($result[ST_ESTOQUE])) ? SimNaoEnum::SIM : SimNaoEnum::NAO;
            $camisaPedido[ST_PEDIDO] = $result[ST_PEDIDO][0];
            $camisaPedido[ST_PAGAMENTO] = $result[ST_PAGAMENTO][0];
            $camisaPedido[DT_PEDIDO] = null;
            $camisaPedido[DT_ENTREGUE] = null;

            if ($result[ST_PEDIDO][0] > 1) {
                $camisaPedido[DT_PEDIDO] = Valida::DataDB($result[DT_PEDIDO]);
            }
            if ($result[ST_PEDIDO][0] > 3) {
                $camisaPedido[DT_ENTREGUE] = Valida::DataDB($result[DT_ENTREGUE]);
            }
            $camisaPedido[DS_OBSERVACAO] = trim($result[DS_OBSERVACAO]);

            $PDO->beginTransaction();
            if (empty($result[CO_PEDIDO_CAMISA])) {
                $camisaPedido[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $camisaPedTamCor[CO_PEDIDO_CAMISA] = $this->Salva($camisaPedido);
                $session->setSession(MENSAGEM, CADASTRADO);
            } else {
                $camisaPedTamCor[CO_PEDIDO_CAMISA] =  $result[CO_PEDIDO_CAMISA];
                $this->Salva($camisaPedido, $result[CO_PEDIDO_CAMISA]);
                $session->setSession(MENSAGEM, ATUALIZADO);
            }
            $camisaPedTamCor[NU_QUANTIDADE] = $result[NU_QUANTIDADE];
            $camisaPedTamCor[CO_COR_CAMISA] = $result[CO_COR_CAMISA][0];
            $camisaPedTamCor[CO_TAMANHO_CAMISA] = $result[CO_TAMANHO_CAMISA][0];
            $camisaPedTamCor[CO_CAMISA] = $result[CO_CAMISA];
            $camisaPedTamCor[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();

            $retult = $pedCamTamanhoCorService->Salva($camisaPedTamCor);

            if ($retult):
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
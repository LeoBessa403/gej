<?php

/**
 * PedidoCamisaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
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
            /** @var CamisaCorCamisaService $camisaCorCamisaService */
            $camisaCorCamisaService = $this->getService(CAMISA_COR_CAMISA_SERVICE);
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];
            $camisaPedido[NO_PESSOA] = trim($result[NO_PESSOA]);
            $camisaPedido[ST_ESTOQUE] = FuncoesSistema::retornoCheckbox(
                (!empty($result[ST_ESTOQUE])) ? $result[ST_ESTOQUE] : null
            );
            $camisaPedido[ST_PEDIDO] = FuncoesSistema::retornoCheckbox(
                (!empty($result[ST_PEDIDO])) ? $result[ST_PEDIDO] : null
            );
            $camisaPedido[TP_SITUACAO] = FuncoesSistema::retornoCheckbox(
                (!empty($result[TP_SITUACAO])) ? $result[TP_SITUACAO] : null
            );
            $camisaPedido[ST_ENTREGUE] = FuncoesSistema::retornoCheckbox(
                (!empty($result[ST_ENTREGUE])) ? $result[ST_ENTREGUE] : null
            );
            $camisaPedido[CO_COR_CAMISA] = $result[CO_COR_CAMISA][0];
            $camisaPedido[NU_CAMISA] = $result[NU_CAMISA][0];
            $camisaPedido[CO_CAMISA] = $result[CO_CAMISA];
            $camisaPedido[DT_CADASTRO] = Valida::DataHoraAtualBanco();

            $PDO->beginTransaction();
            if (empty($result[CO_PEDIDO_CAMISA])) {
                $resultado = $this->Salva($camisaPedido);
            } else {
                $resultado = $this->Salva($camisaPedido, $result[CO_PEDIDO_CAMISA]);
            }
            if ($resultado):
                $retorno[SUCESSO] = true;
                $PDO->commit();
            else:
                $session->setSession(MENSAGEM, 'Não foi possível salvar o Pedido');
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
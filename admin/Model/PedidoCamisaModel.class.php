<?php

/**
 * PedidoCamisaModel.class [ MODEL ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PedidoCamisaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(PedidoCamisaEntidade::ENTIDADE);
    }

    public function Deleta($coPedido)
    {
        /** @var PedCamTamanhoCorModel $pedCamTamModel */
        $pedCamTamModel = new PedCamTamanhoCorModel();
        $pedCamTamModel->DeletaQuando([
            CO_PEDIDO_CAMISA => $coPedido
        ]);

        return parent::Deleta($coPedido);
    }
}
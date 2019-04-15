<?php

/**
 * Class TipoPagamento
 */
class StatusPedidoEnum extends AbstractEnum
{
    const A_PEDIR = 1;
    const PEDIDA = 2;
    const RECEBIDA = 3;
    const ENTREGUE = 4;

    public static $descricao = [
        StatusPedidoEnum::A_PEDIR => 'A pedir',
        StatusPedidoEnum::PEDIDA => 'Pedida',
        StatusPedidoEnum::RECEBIDA => 'Recebida',
        StatusPedidoEnum::ENTREGUE => 'Entregue',
    ];
}

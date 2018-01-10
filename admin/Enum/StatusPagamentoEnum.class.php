<?php

/**
 * Class TipoPagamento
 */
class StatusPagamentoEnum extends AbstractEnum
{
    const NAO_INICIADA = 'N';
    const INICIADA = 'I';
    const CONCLUIDO = 'C';

    public static $descricao = [
        StatusPagamentoEnum::NAO_INICIADA => 'Não Pago',
        StatusPagamentoEnum::INICIADA => 'Iniciado',
        StatusPagamentoEnum::CONCLUIDO => 'Concluído',
    ];
}

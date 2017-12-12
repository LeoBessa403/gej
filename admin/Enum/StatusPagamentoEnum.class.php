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
        StatusPagamentoEnum::NAO_INICIADA => 'Não iniciado',
        StatusPagamentoEnum::INICIADA => 'Iniciado',
        StatusPagamentoEnum::CONCLUIDO => 'Concluido',
    ];
}

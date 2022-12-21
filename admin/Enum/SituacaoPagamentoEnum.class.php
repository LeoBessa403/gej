<?php

/**
 * Class TipoPagamento
 */
class SituacaoPagamentoEnum extends AbstractEnum
{
    const NAO_INICIADA = 'N';
    const INICIADA = 'I';
    const CONCLUIDO = 'C';

    public static $descricao = [
        SituacaoPagamentoEnum::NAO_INICIADA => 'Não Pago',
        SituacaoPagamentoEnum::INICIADA => 'Parcial',
        SituacaoPagamentoEnum::CONCLUIDO => 'Concluído',
    ];
}

<?php


class FluxoCaixaEnum extends AbstractEnum
{
    const FLUXO_ENTRADA = 'E';
    const FLUXO_SAIDA = 'S';

    protected static $descricao = [
        FluxoCaixaEnum::FLUXO_ENTRADA => 'Entrada',
        FluxoCaixaEnum::FLUXO_SAIDA => 'Saída',
    ];
}

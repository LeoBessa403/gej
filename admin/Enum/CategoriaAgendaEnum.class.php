<?php

/**
 * Class TipoPagamento
 */
class CategoriaAgendaEnum extends AbstractEnum
{
    const REUNIAO = 1;
    const ENSAIO = 2;
    const ENCONTRO = 3;
    const FORMACAO = 4;
    const EVENTO = 5;
    const INTERCESSAO = 6;
    const OUTROS = 7;
    const MISSAO = 8;

    public static $descricao = [
        CategoriaAgendaEnum::REUNIAO => 'Reunião',
        CategoriaAgendaEnum::ENSAIO => 'Ensaio',
        CategoriaAgendaEnum::ENCONTRO => 'Encontro',
        CategoriaAgendaEnum::FORMACAO => 'Formação',
        CategoriaAgendaEnum::EVENTO => 'Evento',
        CategoriaAgendaEnum::INTERCESSAO => 'Intercessão',
        CategoriaAgendaEnum::MISSAO => 'Missão',
        CategoriaAgendaEnum::OUTROS => 'Outros',
    ];

    public static $cor = [
        CategoriaAgendaEnum::REUNIAO => 'green',
        CategoriaAgendaEnum::ENSAIO => 'default',
        CategoriaAgendaEnum::ENCONTRO => 'purple',
        CategoriaAgendaEnum::FORMACAO => 'orange',
        CategoriaAgendaEnum::EVENTO => 'beige',
        CategoriaAgendaEnum::INTERCESSAO => 'black',
        CategoriaAgendaEnum::MISSAO => 'gray',
        CategoriaAgendaEnum::OUTROS => 'warning',
    ];
}

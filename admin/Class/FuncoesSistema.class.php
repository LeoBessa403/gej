<?php

/**
 * Check.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2014, Leo Bessa
 */
class FuncoesSistema
{

    public static function retornoFluxoCaixa($fluxo)
    {
        $op = '';
        switch ($fluxo) {
            case "E":
                $op = '<span class="label label-success">Entrada</span>';
                break;
            case "S":
                $op = '<span class="label label-danger">Saída</span>';
                break;
        }

        return $op;
    }

    public static function TamanhoCamisa($tm)
    {
        $op = 'Sem tamanho';
        switch ($tm) {
            case 1:
                $op = 'BL PP';
                break;
            case 2:
                $op = 'BL P';
                break;
            case 3:
                $op = 'BL M';
                break;
            case 4:
                $op = 'BL G';
                break;
            case 5:
                $op = 'BL GG';
                break;
            case 6:
                $op = 'P';
                break;
            case 7:
                $op = 'M';
                break;
            case 8:
                $op = 'G';
                break;
            case 9:
                $op = 'GG';
                break;
            case 10:
                $op = 'XG';
                break;
        }

        return $op;
    }


}
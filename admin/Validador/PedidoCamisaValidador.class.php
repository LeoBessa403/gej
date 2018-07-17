<?php

/**
 * PedidoCamisaValidador.class [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PedidoCamisaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarPedidoCamisa($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[NU_CAMISA], 'Tamanho da camisa'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_COR_CAMISA], 'Cor da Camisa'
        );

        return $this->MontaRetorno($this->retorno);
    }
}
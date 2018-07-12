<?php

/**
 * CamisaValidador.class [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CamisaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarCamisa($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NO_CAMISA], AbstractValidador::VALIDACAO_NOME, 'Camisa'
        );

        return $this->MontaRetorno($this->retorno);
    }
}
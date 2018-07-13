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
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_VALOR_CUSTO], AbstractValidador::VALIDACAO_MOEDA, 'Valor de custo'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_VALOR_VENDA], AbstractValidador::VALIDACAO_MOEDA, 'Valor de venda'
        );

        return $this->MontaRetorno($this->retorno);
    }
}
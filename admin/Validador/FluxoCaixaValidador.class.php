<?php

/**
 * FluxoCaixaValidador.class [ VALIDATOR ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FluxoCaixaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarFluxoCaixa($dados)
    {
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_VALOR], AbstractValidador::VALIDACAO_MOEDA, 'Valor r$'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_REALIZADO], AbstractValidador::VALIDACAO_DATA, 'Data Realizado'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_VENCIMENTO], AbstractValidador::VALIDACAO_DATA, 'Data Vencimento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioDescricao(
            $dados[DS_DESCRICAO], 5, 'Observação '
        );

        return $this->MontaRetorno($this->retorno);
    }
}
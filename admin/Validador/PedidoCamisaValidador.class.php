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
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NO_PESSOA], AbstractValidador::VALIDACAO_NOME, 'Quem Pediu'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[ST_PEDIDO], 'Status Pedido'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[ST_PAGAMENTO], 'Situação do Pagamento'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_COR_CAMISA], 'Cor da Camisa'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[NU_QUANTIDADE], AbstractValidador::VALIDACAO_NUMERO, 'Quantidade'
        );
        if ($dados[ST_PEDIDO][0] > 1) {
            $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
                $dados[DT_PEDIDO], AbstractValidador::VALIDACAO_DATA, 'Data do Pedido'
            );
        }
        if ($dados[ST_PEDIDO][0] > 3) {
            $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
                $dados[DT_ENTREGUE], AbstractValidador::VALIDACAO_DATA, 'Data Entregue'
            );
        }
        $this->retorno[DADOS][] = $this->ValidaCampoSelectObrigatorio(
            $dados[CO_TAMANHO_CAMISA], 'Tamanho da Camisa'
        );

        return $this->MontaRetorno($this->retorno);
    }
}
<?php

/**
 * FluxoCaixa.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class FluxoCaixaEntidade extends AbstractEntidade
{
    const TABELA = 'TB_FLUXO_CAIXA';
    const ENTIDADE = 'FluxoCaixaEntidade';
    const CHAVE = CO_FLUXO_CAIXA;

    private $co_fluxo_caixa;
    private $dt_cadastro;
    private $dt_realizado;
    private $dt_vencimento;
    private $nu_valor;
    private $ds_descricao;
    private $tp_fluxo;
    private $st_pagamento;


    /**
     * @return array
     */
    public static function getCampos()
    {
        return [
            CO_FLUXO_CAIXA,
            DT_CADASTRO,
            DT_REALIZADO,
            DT_VENCIMENTO,
            NU_VALOR,
            DS_DESCRICAO,
            TP_FLUXO,
            ST_PAGAMENTO,
        ];
    }

    /**
     * @return array $relacionamentos
     */
    public static function getRelacionamentos()
    {
        return [];
    }


    /**
     * @return int $co_fluxo_caixa
     */
    public function getCoFluxoCaixa()
    {
        return $this->co_fluxo_caixa;
    }

    /**
     * @param $co_fluxo_caixa
     * @return mixed
     */
    public function setCoFluxoCaixa($co_fluxo_caixa)
    {
        return $this->co_fluxo_caixa = $co_fluxo_caixa;
    }

    /**
     * @return mixed $dt_cadastro
     */
    public function getDtCadastro()
    {
        return $this->dt_cadastro;
    }

    /**
     * @param $dt_cadastro
     * @return mixed
     */
    public function setDtCadastro($dt_cadastro)
    {
        return $this->dt_cadastro = $dt_cadastro;
    }

    /**
     * @return mixed $dt_realizado
     */
    public function getDtRealizado()
    {
        return $this->dt_realizado;
    }

    /**
     * @param $dt_realizado
     * @return mixed
     */
    public function setDtRealizado($dt_realizado)
    {
        return $this->dt_realizado = $dt_realizado;
    }

    /**
     * @return mixed $dt_vencimento
     */
    public function getDtVencimento()
    {
        return $this->dt_vencimento;
    }

    /**
     * @param $dt_vencimento
     * @return mixed
     */
    public function setDtVencimento($dt_vencimento)
    {
        return $this->dt_vencimento = $dt_vencimento;
    }

    /**
     * @return mixed $nu_valor
     */
    public function getNuValor()
    {
        return $this->nu_valor;
    }

    /**
     * @param $nu_valor
     * @return mixed
     */
    public function setNuValor($nu_valor)
    {
        return $this->nu_valor = $nu_valor;
    }

    /**
     * @return mixed $ds_descricao
     */
    public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

    /**
     * @param $ds_descricao
     * @return mixed
     */
    public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

    /**
     * @return mixed $tp_fluxo
     */
    public function getTpFluxo()
    {
        return $this->tp_fluxo;
    }

    /**
     * @param $tp_fluxo
     * @return mixed
     */
    public function setTpFluxo($tp_fluxo)
    {
        return $this->tp_fluxo = $tp_fluxo;
    }

    /**
     * @return mixed $st_pagamento
     */
    public function getStPagamento()
    {
        return $this->st_pagamento;
    }

    /**
     * @param $st_pagamento
     * @return mixed
     */
    public function setStPagamento($st_pagamento)
    {
        return $this->st_pagamento = $st_pagamento;
    }

}
<?php

/**
 * Camisa.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CamisaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CAMISA';
	const ENTIDADE = 'CamisaEntidade';
	const CHAVE = CO_CAMISA;

	private $co_camisa;
	private $no_camisa;
	private $nu_valor_custo;
	private $nu_valor_venda;
	private $co_imagem;
	private $co_camisa_cor_camisa;
	private $co_pedido_camisa;
	private $tp_pedido;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_CAMISA,
            NU_VALOR_CUSTO,
            NU_VALOR_VENDA,
			NO_CAMISA,
			CO_IMAGEM,
            TP_PEDIDO,
		];
    }

	/**
	* @return array $relacionamentos
    */
	public static function getRelacionamentos() 
    {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
	}


	/**
	* @return int $co_camisa
    */
	public function getCoCamisa()
    {
        return $this->co_camisa;
    }

	/**
	* @param $co_camisa
    * @return mixed
    */
	public function setCoCamisa($co_camisa)
    {
        return $this->co_camisa = $co_camisa;
    }

	/**
	* @return mixed $no_camisa
    */
	public function getNoCamisa()
    {
        return $this->no_camisa;
    }

	/**
	* @param $no_camisa
    * @return mixed
    */
	public function setNoCamisa($no_camisa)
    {
        return $this->no_camisa = $no_camisa;
    }

	/**
	* @return ImagemEntidade $co_imagem
    */
	public function getCoImagem()
    {
        return $this->co_imagem;
    }

	/**
	* @param $co_imagem
    * @return mixed
    */
	public function setCoImagem($co_imagem)
    {
        return $this->co_imagem = $co_imagem;
    }

	/**
	* @return CamisaCorCamisaEntidade $co_camisa_cor_camisa
     */
	public function getCoCamisaCorCamisa()
    {
        return $this->co_camisa_cor_camisa;
    }

	/**
     * @param $co_camisa_cor_camisa
     * @return mixed
     */
	public function setCoCamisaCorCamisa($co_camisa_cor_camisa)
    {
        return $this->co_camisa_cor_camisa = $co_camisa_cor_camisa;
    }

//	/**
//	* @return PedidoCamisaEntidade $co_pedido_camisa
//     */
//	public function getCoPedidoCamisa()
//    {
//        return $this->co_pedido_camisa;
//    }
//
//	/**
//     * @param $co_pedido_camisa
//     * @return mixed
//     */
//	public function setCoPedidoCamisa($co_pedido_camisa)
//    {
//        return $this->co_pedido_camisa = $co_pedido_camisa;
//    }

    /**
     * @return mixed
     */
    public function getNuValorCusto()
    {
        return $this->nu_valor_custo;
    }

    /**
     * @param mixed $nu_valor_custo
     */
    public function setNuValorCusto($nu_valor_custo)
    {
        $this->nu_valor_custo = $nu_valor_custo;
    }

    /**
     * @return mixed
     */
    public function getNuValorVenda()
    {
        return $this->nu_valor_venda;
    }

    /**
     * @param mixed $nu_valor_venda
     */
    public function setNuValorVenda($nu_valor_venda)
    {
        $this->nu_valor_venda = $nu_valor_venda;
    }

    /**
     * @return mixed
     */
    public function getTpPedido()
    {
        return $this->tp_pedido;
    }

    /**
     * @param mixed $tp_pedido
     */
    public function setTpPedido($tp_pedido)
    {
        $this->tp_pedido = $tp_pedido;
    }


}
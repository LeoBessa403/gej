<?php

/**
 * PedidoCamisa.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class PedidoCamisaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PEDIDO_CAMISA';
	const ENTIDADE = 'PedidoCamisaEntidade';
	const CHAVE = CO_PEDIDO_CAMISA;

	private $co_pedido_camisa;
	private $st_pedido;
	private $st_entregue;
	private $dt_cadastro;
	private $dt_pedida;
	private $dt_entregue;
	private $co_camisa;
	private $co_cor_camisa;
	private $co_inscricao;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PEDIDO_CAMISA,
			ST_PEDIDO,
			ST_ENTREGUE,
			DT_CADASTRO,
			DT_PEDIDA,
			DT_ENTREGUE,
			CO_CAMISA,
			CO_COR_CAMISA,
			CO_INSCRICAO,
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
	* @return int $co_pedido_camisa
    */
	public function getCoPedidoCamisa()
    {
        return $this->co_pedido_camisa;
    }

	/**
	* @param $co_pedido_camisa
    * @return mixed
    */
	public function setCoPedidoCamisa($co_pedido_camisa)
    {
        return $this->co_pedido_camisa = $co_pedido_camisa;
    }

	/**
	* @return mixed $st_pedido
    */
	public function getStPedido()
    {
        return $this->st_pedido;
    }

	/**
	* @param $st_pedido
    * @return mixed
    */
	public function setStPedido($st_pedido)
    {
        return $this->st_pedido = $st_pedido;
    }

	/**
	* @return mixed $st_entregue
    */
	public function getStEntregue()
    {
        return $this->st_entregue;
    }

	/**
	* @param $st_entregue
    * @return mixed
    */
	public function setStEntregue($st_entregue)
    {
        return $this->st_entregue = $st_entregue;
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
	* @return mixed $dt_pedida
    */
	public function getDtPedida()
    {
        return $this->dt_pedida;
    }

	/**
	* @param $dt_pedida
    * @return mixed
    */
	public function setDtPedida($dt_pedida)
    {
        return $this->dt_pedida = $dt_pedida;
    }

	/**
	* @return mixed $dt_entregue
    */
	public function getDtEntregue()
    {
        return $this->dt_entregue;
    }

	/**
	* @param $dt_entregue
    * @return mixed
    */
	public function setDtEntregue($dt_entregue)
    {
        return $this->dt_entregue = $dt_entregue;
    }

	/**
	* @return CamisaEntidade $co_camisa
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
	* @return CorCamisaEntidade $co_cor_camisa
    */
	public function getCoCorCamisa()
    {
        return $this->co_cor_camisa;
    }

	/**
	* @param $co_cor_camisa
    * @return mixed
    */
	public function setCoCorCamisa($co_cor_camisa)
    {
        return $this->co_cor_camisa = $co_cor_camisa;
    }

	/**
	* @return InscricaoEntidade $co_inscricao
    */
	public function getCoInscricao()
    {
        return $this->co_inscricao;
    }

	/**
	* @param $co_inscricao
    * @return mixed
    */
	public function setCoInscricao($co_inscricao)
    {
        return $this->co_inscricao = $co_inscricao;
    }

}
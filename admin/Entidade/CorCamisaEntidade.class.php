<?php

/**
 * CorCamisa.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CorCamisaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_COR_CAMISA';
	const ENTIDADE = 'CorCamisaEntidade';
	const CHAVE = CO_COR_CAMISA;

	private $co_cor_camisa;
	private $no_cor_camisa;
	private $co_camisa_cor_camisa;
	private $co_pedido_camisa;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_COR_CAMISA,
			NO_COR_CAMISA,
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
	* @return int $co_cor_camisa
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
	* @return mixed $no_cor_camisa
    */
	public function getNoCorCamisa()
    {
        return $this->no_cor_camisa;
    }

	/**
	* @param $no_cor_camisa
    * @return mixed
    */
	public function setNoCorCamisa($no_cor_camisa)
    {
        return $this->no_cor_camisa = $no_cor_camisa;
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

	/**
	* @return PedidoCamisaEntidade $co_pedido_camisa
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

}
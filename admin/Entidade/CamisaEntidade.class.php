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
	private $co_imagem;
	private $co_camisa_cor_camisa;
	private $co_pedido_camisa;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_CAMISA,
			NO_CAMISA,
			CO_IMAGEM,
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
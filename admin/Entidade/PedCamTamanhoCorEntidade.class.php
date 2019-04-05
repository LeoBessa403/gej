<?php

/**
 * PedCamTamanhoCor.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PedCamTamanhoCorEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PED_CAM_TAMANHO_COR';
	const ENTIDADE = 'PedCamTamanhoCorEntidade';
	const CHAVE = CO_PED_CAM_TAMANHO_COR;

	private $co_ped_cam_tamanho_cor;
	private $nu_quantidade;
	private $co_tamanho_camisa;
	private $co_cor_camisa;
	private $co_camisa;
	private $co_pedido_camisa;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PED_CAM_TAMANHO_COR,
			NU_QUANTIDADE,
			CO_TAMANHO_CAMISA,
			CO_COR_CAMISA,
			CO_CAMISA,
			CO_PEDIDO_CAMISA,
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
	* @return int $co_ped_cam_tamanho_cor
    */
	public function getCoPedCamTamanhoCor()
    {
        return $this->co_ped_cam_tamanho_cor;
    }

	/**
	* @param $co_ped_cam_tamanho_cor
    * @return mixed
    */
	public function setCoPedCamTamanhoCor($co_ped_cam_tamanho_cor)
    {
        return $this->co_ped_cam_tamanho_cor = $co_ped_cam_tamanho_cor;
    }

	/**
	* @return mixed $nu_quantidade
    */
	public function getNuQuantidade()
    {
        return $this->nu_quantidade;
    }

	/**
	* @param $nu_quantidade
    * @return mixed
    */
	public function setNuQuantidade($nu_quantidade)
    {
        return $this->nu_quantidade = $nu_quantidade;
    }

	/**
	* @return TamanhoCamisaEntidade $co_tamanho_camisa
    */
	public function getCoTamanhoCamisa()
    {
        return $this->co_tamanho_camisa;
    }

	/**
	* @param $co_tamanho_camisa
    * @return mixed
    */
	public function setCoTamanhoCamisa($co_tamanho_camisa)
    {
        return $this->co_tamanho_camisa = $co_tamanho_camisa;
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
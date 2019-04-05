<?php

/**
 * TamanhoCamisa.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class TamanhoCamisaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_TAMANHO_CAMISA';
	const ENTIDADE = 'TamanhoCamisaEntidade';
	const CHAVE = CO_TAMANHO_CAMISA;

	private $co_tamanho_camisa;
	private $no_tamanho;
	private $co_ped_cam_tamanho_cor;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_TAMANHO_CAMISA,
			NO_TAMANHO,
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
	* @return int $co_tamanho_camisa
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
	* @return mixed $no_tamanho
    */
	public function getNoTamanho()
    {
        return $this->no_tamanho;
    }

	/**
	* @param $no_tamanho
    * @return mixed
    */
	public function setNoTamanho($no_tamanho)
    {
        return $this->no_tamanho = $no_tamanho;
    }

	/**
	* @return PedCamTamanhoCorEntidade $co_ped_cam_tamanho_cor
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

}
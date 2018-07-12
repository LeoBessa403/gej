<?php

/**
 * CamisaCorCamisa.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class CamisaCorCamisaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_CAMISA_COR_CAMISA';
	const ENTIDADE = 'CamisaCorCamisaEntidade';
	const CHAVE = CO_CAMISA_COR_CAMISA;

	private $co_camisa_cor_camisa;
	private $co_camisa;
	private $co_cor_camisa;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_CAMISA_COR_CAMISA,
			CO_CAMISA,
			CO_COR_CAMISA,
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
	* @return int $co_camisa_cor_camisa
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

}
<?php

/**
 * Administrativo.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AdministrativoEntidade extends AbstractEntidade
{
	const TABELA = 'TB_ADMINISTRATIVO';
	const ENTIDADE = 'AdministrativoEntidade';
	const CHAVE = CO_ADMINISTRATIVO;

	private $co_administrativo;
	private $nu_fundo_caixa;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_ADMINISTRATIVO,
			NU_FUNDO_CAIXA,
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
	* @return AdministrativoEntidade $co_administrativo
     */
	public function getCoAdministrativo()
    {
        return $this->co_administrativo;
    }

	/**
	* @param $co_administrativo
     * @return mixed
     */
	public function setCoAdministrativo($co_administrativo)
    {
        return $this->co_administrativo = $co_administrativo;
    }

	/**
	* @return mixed $nu_fundo_caixa
     */
	public function getNuFundoCaixa()
    {
        return $this->nu_fundo_caixa;
    }

	/**
	* @param $nu_fundo_caixa
     * @return mixed
     */
	public function setNuFundoCaixa($nu_fundo_caixa)
    {
        return $this->nu_fundo_caixa = $nu_fundo_caixa;
    }

}
<?php

/**
 * Auditoria.Entidade [ ENTIDADE ]
 * @copyright (c) 2018, Leo Bessa
 */

class AuditoriaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_AUDITORIA';
	const ENTIDADE = 'AuditoriaEntidade';
	const CHAVE = CO_AUDITORIA;

	private $co_auditoria;
	private $dt_realizado;
	private $co_registro;
	private $ds_perfil_usuario;
	private $co_usuario;
	private $co_auditoria_tabela;


	/**
     * @return array
     */
	public static function getCampos() 
        {
    	return [
			CO_AUDITORIA,
			DT_REALIZADO,
			CO_REGISTRO,
			DS_PERFIL_USUARIO,
			CO_USUARIO,
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
	* @return int $co_auditoria
     */
	public function getCoAuditoria()
    {
        return $this->co_auditoria;
    }

	/**
	* @param $co_auditoria
     * @return mixed
     */
	public function setCoAuditoria($co_auditoria)
    {
        return $this->co_auditoria = $co_auditoria;
    }

    /**
     * @return mixed
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
	* @return RegistroEntidade $co_registro
     */
	public function getCoRegistro()
    {
        return $this->co_registro;
    }

	/**
	* @param $co_registro
     * @return mixed
     */
	public function setCoRegistro($co_registro)
    {
        return $this->co_registro = $co_registro;
    }

	/**
	* @return $ds_perfil_usuario
     */
	public function getDsPerfilUsuario()
    {
        return $this->ds_perfil_usuario;
    }

	/**
	* @param $ds_perfil_usuario
     * @return mixed
     */
	public function setDsPerfilUsuario($ds_perfil_usuario)
    {
        return $this->ds_perfil_usuario = $ds_perfil_usuario;
    }

	/**
	* @return UsuarioEntidade $co_usuario
     */
	public function getCoUsuario()
    {
        return $this->co_usuario;
    }

	/**
	* @param $co_usuario
     * @return mixed
     */
	public function setCoUsuario($co_usuario)
    {
        return $this->co_usuario = $co_usuario;
    }

	/**
	* @return AuditoriaTabelaEntidade $co_auditoria_tabela
     */
	public function getCoAuditoriaTabela()
    {
        return $this->co_auditoria_tabela;
    }

	/**
     * @param $co_auditoria_tabela
     * @return mixed
     */
	public function setCoAuditoriaTabela($co_auditoria_tabela)
    {
        return $this->co_auditoria_tabela = $co_auditoria_tabela;
    }

}
<?php

/**
 * UsuarioEvento.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class UsuarioEventoEntidade extends AbstractEntidade
{
	const TABELA = 'tb_usuario_evento';
	const ENTIDADE = 'UsuarioEventoEntidade';
	const CHAVE = ;

	private $co_usuario;
	private $co_evento;


	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_USUARIO,
			CO_EVENTO,
		];
    }

	/**
	* @return $relacionamentos
     */
	public static function getRelacionamentos() {
    	$relacionamentos = Relacionamentos::getRelacionamentos();
		return $relacionamentos[static::TABELA];
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
	* @return EventoEntidade $co_evento
     */
	public function getCoEvento()
    {
        return $this->co_evento;
    }

	/**
	* @param $co_evento
     * @return mixed
     */
	public function setCoEvento($co_evento)
    {
        return $this->co_evento = $co_evento;
    }

}
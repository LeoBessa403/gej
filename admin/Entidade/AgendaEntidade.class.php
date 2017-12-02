<?php

/**
 * Agenda.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class AgendaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_AGENDA';
	const ENTIDADE = 'AgendaEntidade';
	const CHAVE = CO_AGENDA;

	private $co_agenda;
	private $dt_inicio;
	private $dt_fim;
	private $ds_descricao;
	private $st_dia_todo;
	private $st_status;
	private $ds_titulo;
	private $co_categoria;
	private $co_usuario_solicitante;
	private $co_usuario_status;
	private $co_evento;
	private $dt_cadastro;
	private $co_agenda_perfil;

	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_AGENDA,
			DT_INICIO,
			DT_FIM,
			DS_DESCRICAO,
			ST_DIA_TODO,
			ST_STATUS,
			DS_TITULO,
			CO_CATEGORIA,
			CO_USUARIO_SOLICITANTE,
			CO_USUARIO_STATUS,
			CO_EVENTO,
			DT_CADASTRO,
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
	* @return $co_agenda
     */
	public function getCoAgenda()
    {
        return $this->co_agenda;
    }

	/**
	* @param $co_agenda
     * @return mixed
     */
	public function setCoAgenda($co_agenda)
    {
        return $this->co_agenda = $co_agenda;
    }

	/**
	* @return $dt_inicio
     */
	public function getDtInicio()
    {
        return $this->dt_inicio;
    }

	/**
	* @param $dt_inicio
     * @return mixed
     */
	public function setDtInicio($dt_inicio)
    {
        return $this->dt_inicio = $dt_inicio;
    }

	/**
	* @return $dt_fim
     */
	public function getDtFim()
    {
        return $this->dt_fim;
    }

	/**
	* @param $dt_fim
     * @return mixed
     */
	public function setDtFim($dt_fim)
    {
        return $this->dt_fim = $dt_fim;
    }

	/**
	* @return $ds_descricao
     */
	public function getDsDescricao()
    {
        return $this->ds_descricao;
    }

	/**
	* @param $ds_descricao
     * @return mixed
     */
	public function setDsDescricao($ds_descricao)
    {
        return $this->ds_descricao = $ds_descricao;
    }

	/**
	* @return $st_dia_todo
     */
	public function getStDiaTodo()
    {
        return $this->st_dia_todo;
    }

	/**
	* @param $st_dia_todo
     * @return mixed
     */
	public function setStDiaTodo($st_dia_todo)
    {
        return $this->st_dia_todo = $st_dia_todo;
    }

	/**
	* @return $st_status
     */
	public function getStStatus()
    {
        return $this->st_status;
    }

	/**
	* @param $st_status
     * @return mixed
     */
	public function setStStatus($st_status)
    {
        return $this->st_status = $st_status;
    }

	/**
	* @return $ds_titulo
     */
	public function getDsTitulo()
    {
        return $this->ds_titulo;
    }

	/**
	* @param $ds_titulo
     * @return mixed
     */
	public function setDsTitulo($ds_titulo)
    {
        return $this->ds_titulo = $ds_titulo;
    }

	/**
	* @return CategoriaEntidade $co_categoria
     */
	public function getCoCategoria()
    {
        return $this->co_categoria;
    }

	/**
	* @param $co_categoria
     * @return mixed
     */
	public function setCoCategoria($co_categoria)
    {
        return $this->co_categoria = $co_categoria;
    }

	/**
	* @return UsuarioSolicitanteEntidade $co_usuario_solicitante
     */
	public function getCoUsuarioSolicitante()
    {
        return $this->co_usuario_solicitante;
    }

	/**
	* @param $co_usuario_solicitante
     * @return mixed
     */
	public function setCoUsuarioSolicitante($co_usuario_solicitante)
    {
        return $this->co_usuario_solicitante = $co_usuario_solicitante;
    }

	/**
	* @return UsuarioStatusEntidade $co_usuario_status
     */
	public function getCoUsuarioStatus()
    {
        return $this->co_usuario_status;
    }

	/**
	* @param $co_usuario_status
     * @return mixed
     */
	public function setCoUsuarioStatus($co_usuario_status)
    {
        return $this->co_usuario_status = $co_usuario_status;
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

	/**
	* @return $dt_cadastro
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
	* @return AgendaPerfilEntidade $co_agenda_perfil
     */
	public function getCoAgendaPerfil()
    {
        return $this->co_agenda_perfil;
    }

	/**
     * @param $co_agenda_perfil
     * @return mixed
     */
	public function setCoAgendaPerfil($co_agenda_perfil)
    {
        return $this->co_agenda_perfil = $co_agenda_perfil;
    }

}
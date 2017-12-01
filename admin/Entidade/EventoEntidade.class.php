<?php

/**
 * Evento.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class EventoEntidade extends AbstractEntidade
{
	const TABELA = 'tb_evento';
	const ENTIDADE = 'EventoEntidade';
	const CHAVE = CO_EVENTO;

	private $co_evento;
	private $no_evento;
	private $ds_conteudo;
	private $ds_palavras_chaves;
	private $dt_cadastro;
	private $dt_realizado;
	private $ds_local;


	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_EVENTO,
			NO_EVENTO,
			DS_CONTEUDO,
			DS_PALAVRAS_CHAVES,
			DT_CADASTRO,
			DT_REALIZADO,
			DS_LOCAL,
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
	* @return $co_evento
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
	* @return $no_evento
     */
	public function getNoEvento()
    {
        return $this->no_evento;
    }

	/**
	* @param $no_evento
     * @return mixed
     */
	public function setNoEvento($no_evento)
    {
        return $this->no_evento = $no_evento;
    }

	/**
	* @return $ds_conteudo
     */
	public function getDsConteudo()
    {
        return $this->ds_conteudo;
    }

	/**
	* @param $ds_conteudo
     * @return mixed
     */
	public function setDsConteudo($ds_conteudo)
    {
        return $this->ds_conteudo = $ds_conteudo;
    }

	/**
	* @return $ds_palavras_chaves
     */
	public function getDsPalavrasChaves()
    {
        return $this->ds_palavras_chaves;
    }

	/**
	* @param $ds_palavras_chaves
     * @return mixed
     */
	public function setDsPalavrasChaves($ds_palavras_chaves)
    {
        return $this->ds_palavras_chaves = $ds_palavras_chaves;
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
	* @return $dt_realizado
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
	* @return $ds_local
     */
	public function getDsLocal()
    {
        return $this->ds_local;
    }

	/**
	* @param $ds_local
     * @return mixed
     */
	public function setDsLocal($ds_local)
    {
        return $this->ds_local = $ds_local;
    }

}
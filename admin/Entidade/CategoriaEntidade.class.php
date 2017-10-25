<?php

/**
 * Categoria.Entidade [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class CategoriaEntidade extends AbstractEntidade
{
	const TABELA = 'tb_categoria';
	const ENTIDADE = 'CategoriaEntidade';
	const CHAVE = CO_CATEGORIA;

	private $co_categoria;
	private $no_categoria;
	private $ds_tipo;
	private $ds_cor;
	private $co_agenda;


	/**
     * @return array
     */
	public static function getCampos() {
    	return [
			CO_CATEGORIA,
			NO_CATEGORIA,
			DS_TIPO,
			DS_COR,
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
	* @return $co_categoria
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
	* @return $no_categoria
     */
	public function getNoCategoria()
    {
        return $this->no_categoria;
    }

	/**
	* @param $no_categoria
     * @return mixed
     */
	public function setNoCategoria($no_categoria)
    {
        return $this->no_categoria = $no_categoria;
    }

	/**
	* @return $ds_tipo
     */
	public function getDsTipo()
    {
        return $this->ds_tipo;
    }

	/**
	* @param $ds_tipo
     * @return mixed
     */
	public function setDsTipo($ds_tipo)
    {
        return $this->ds_tipo = $ds_tipo;
    }

	/**
	* @return $ds_cor
     */
	public function getDsCor()
    {
        return $this->ds_cor;
    }

	/**
	* @param $ds_cor
     * @return mixed
     */
	public function setDsCor($ds_cor)
    {
        return $this->ds_cor = $ds_cor;
    }

	/**
	* @return AgendaEntidade $co_agenda
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

}
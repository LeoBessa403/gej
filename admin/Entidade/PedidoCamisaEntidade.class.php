<?php

/**
 * PedidoCamisa.Entidade [ ENTIDADE ]
 * @copyright (c) 2019, Leo Bessa
 */

class PedidoCamisaEntidade extends AbstractEntidade
{
	const TABELA = 'TB_PEDIDO_CAMISA';
	const ENTIDADE = 'PedidoCamisaEntidade';
	const CHAVE = CO_PEDIDO_CAMISA;

	private $co_pedido_camisa;
	private $no_pessoa;
	private $st_pedido;
	private $st_estoque;
	private $dt_cadastro;
	private $st_pagamento;
	private $dt_pedido;
	private $dt_entregue;
	private $ds_observacao;
	private $co_inscricao;
	private $co_ped_cam_tamanho_cor;


	/**
    * @return array
    */
	public static function getCampos() 
    {
    	return [
			CO_PEDIDO_CAMISA,
			NO_PESSOA,
			ST_PEDIDO,
			ST_ESTOQUE,
			DT_CADASTRO,
			ST_PAGAMENTO,
			DT_PEDIDO,
			DT_ENTREGUE,
			DS_OBSERVACAO,
			CO_INSCRICAO,
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
	* @return int $co_pedido_camisa
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

	/**
	* @return mixed $no_pessoa
    */
	public function getNoPessoa()
    {
        return $this->no_pessoa;
    }

	/**
	* @param $no_pessoa
    * @return mixed
    */
	public function setNoPessoa($no_pessoa)
    {
        return $this->no_pessoa = $no_pessoa;
    }

	/**
	* @return mixed $st_pedido
    */
	public function getStPedido()
    {
        return $this->st_pedido;
    }

	/**
	* @param $st_pedido
    * @return mixed
    */
	public function setStPedido($st_pedido)
    {
        return $this->st_pedido = $st_pedido;
    }

	/**
	* @return mixed $st_estoque
    */
	public function getStEstoque()
    {
        return $this->st_estoque;
    }

	/**
	* @param $st_estoque
    * @return mixed
    */
	public function setStEstoque($st_estoque)
    {
        return $this->st_estoque = $st_estoque;
    }

	/**
	* @return mixed $dt_cadastro
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
	* @return mixed $st_pagamento
    */
	public function getStPagamento()
    {
        return $this->st_pagamento;
    }

	/**
	* @param $st_pagamento
    * @return mixed
    */
	public function setStPagamento($st_pagamento)
    {
        return $this->st_pagamento = $st_pagamento;
    }

	/**
	* @return mixed $dt_pedido
    */
	public function getDtPedido()
    {
        return $this->dt_pedido;
    }

	/**
	* @param $dt_pedido
    * @return mixed
    */
	public function setDtPedido($dt_pedido)
    {
        return $this->dt_pedido = $dt_pedido;
    }

	/**
	* @return mixed $dt_entregue
    */
	public function getDtEntregue()
    {
        return $this->dt_entregue;
    }

	/**
	* @param $dt_entregue
    * @return mixed
    */
	public function setDtEntregue($dt_entregue)
    {
        return $this->dt_entregue = $dt_entregue;
    }

	/**
	* @return mixed $ds_observacao
    */
	public function getDsObservacao()
    {
        return $this->ds_observacao;
    }

	/**
	* @param $ds_observacao
    * @return mixed
    */
	public function setDsObservacao($ds_observacao)
    {
        return $this->ds_observacao = $ds_observacao;
    }

	/**
	* @return InscricaoEntidade $co_inscricao
    */
	public function getCoInscricao()
    {
        return $this->co_inscricao;
    }

	/**
	* @param $co_inscricao
    * @return mixed
    */
	public function setCoInscricao($co_inscricao)
    {
        return $this->co_inscricao = $co_inscricao;
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
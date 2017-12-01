<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2017, Leo Bessa
 */

class Relacionamentos
{

	public static function getRelacionamentos(){
    		return array(
			(AcessoEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
			),
			(UsuarioEntidade::TABELA) => Array(
				(CO_ACESSO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'AcessoEntidade',
					('Tipo') => '2',
				),
				(CO_AUDITORIA) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'AuditoriaEntidade',
					('Tipo') => '2',
				),
				(CO_IMAGEM) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'ImagemEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_USUARIO_PERFIL) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioPerfilEntidade',
					('Tipo') => '2',
				),
			),
			(AuditoriaEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
			),
			(InscricaoEntidade::TABELA) => Array(
				(CO_EVENTO) => Array(
					('Campo') => CO_EVENTO,
					('Entidade') => 'EventoEntidade',
					('Tipo') => '1',
				),
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
				(CO_PAGAMENTO) => Array(
					('Campo') => CO_INSCRICAO,
					('Entidade') => 'PagamentoEntidade',
					('Tipo') => '1',
				),
			),
			(EventoEntidade::TABELA) => Array(
				(CO_INSCRICAO) => Array(
					('Campo') => CO_EVENTO,
					('Entidade') => 'InscricaoEntidade',
					('Tipo') => '1',
				),
			),
			(PessoaEntidade::TABELA) => Array(
				(CO_INSCRICAO) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'InscricaoEntidade',
					('Tipo') => '1',
				),
				(CO_MEMBRO) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'MembroEntidade',
					('Tipo') => '1',
				),
				(CO_CONTATO) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'ContatoEntidade',
					('Tipo') => '1',
				),
				(CO_ENDERECO) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'EnderecoEntidade',
					('Tipo') => '1',
				),
				(CO_USUARIO) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
			),
			(MembroEntidade::TABELA) => Array(
				(CO_PESSOA) => Array(
					('Campo') => CO_PESSOA,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(PagamentoEntidade::TABELA) => Array(
				(CO_INSCRICAO) => Array(
					('Campo') => CO_INSCRICAO,
					('Entidade') => 'InscricaoEntidade',
					('Tipo') => '1',
				),
				(CO_PARCELAMENTO) => Array(
					('Campo') => CO_PAGAMENTO,
					('Entidade') => 'ParcelamentoEntidade',
					('Tipo') => '2',
				),
			),
			(ParcelamentoEntidade::TABELA) => Array(
				(CO_PAGAMENTO) => Array(
					('Campo') => CO_PAGAMENTO,
					('Entidade') => 'PagamentoEntidade',
					('Tipo') => '1',
				),
				(CO_TIPO_PAGAMENTO) => Array(
					('Campo') => CO_TIPO_PAGAMENTO,
					('Entidade') => 'TipoPagamentoEntidade',
					('Tipo') => '1',
				),
			),
			(TipoPagamentoEntidade::TABELA) => Array(
				(CO_PARCELAMENTO) => Array(
					('Campo') => CO_TIPO_PAGAMENTO,
					('Entidade') => 'ParcelamentoEntidade',
					('Tipo') => '2',
				),
			),
			(PerfilFuncionalidadeEntidade::TABELA) => Array(
				(CO_PERFIL) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'PerfilEntidade',
					('Tipo') => '1',
				),
				(CO_FUNCIONALIDADE) => Array(
					('Campo') => CO_FUNCIONALIDADE,
					('Entidade') => 'FuncionalidadeEntidade',
					('Tipo') => '1',
				),
			),
			(PerfilEntidade::TABELA) => Array(
				(CO_PERFIL_FUNCIONALIDADE) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'PerfilFuncionalidadeEntidade',
					('Tipo') => '2',
				),
				(CO_USUARIO_PERFIL) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'UsuarioPerfilEntidade',
					('Tipo') => '2',
				),
			),
			(FuncionalidadeEntidade::TABELA) => Array(
				(CO_PERFIL_FUNCIONALIDADE) => Array(
					('Campo') => CO_FUNCIONALIDADE,
					('Entidade') => 'PerfilFuncionalidadeEntidade',
					('Tipo') => '2',
				),
			),
			(ContatoEntidade::TABELA) => Array(
				(CO_PESSOA) => Array(
					('Campo') => CO_CONTATO,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(EnderecoEntidade::TABELA) => Array(
				(CO_PESSOA) => Array(
					('Campo') => CO_ENDERECO,
					('Entidade') => 'PessoaEntidade',
					('Tipo') => '1',
				),
			),
			(ImagemEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_IMAGEM,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
			),
			(UsuarioPerfilEntidade::TABELA) => Array(
				(CO_USUARIO) => Array(
					('Campo') => CO_USUARIO,
					('Entidade') => 'UsuarioEntidade',
					('Tipo') => '1',
				),
				(CO_PERFIL) => Array(
					('Campo') => CO_PERFIL,
					('Entidade') => 'PerfilEntidade',
					('Tipo') => '1',
				),
			),
		);
}
}
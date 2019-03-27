<?php

/**
 * Relacionamentos.class [ RELACIONAMENTOS DO BANCO ]
 * @copyright (c) 2017, Leo Bessa
 */

class Relacionamentos
{

    public static function getRelacionamentos()
    {
        return array(
            (AcessoEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
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
                (CO_COMISSAO_EVENTO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'ComissaoEventoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AGENDA) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaTabelaEntidade::TABELA) => Array(
                (CO_AUDITORIA) => Array(
                    ('Campo') => CO_AUDITORIA,
                    ('Entidade') => 'AuditoriaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AUDITORIA_ITENS) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaItensEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (AuditoriaItensEntidade::TABELA) => Array(
                (CO_AUDITORIA_TABELA) => Array(
                    ('Campo') => CO_AUDITORIA_TABELA,
                    ('Entidade') => 'AuditoriaTabelaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (InscricaoEntidade::TABELA) => Array(
                (CO_PESSOA) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'PessoaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGAMENTO) => Array(
                    ('Campo') => CO_INSCRICAO,
                    ('Entidade') => 'PagamentoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PEDIDO_CAMISA) => Array(
                    ('Campo') => CO_INSCRICAO,
                    ('Entidade') => 'PedidoCamisaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PessoaEntidade::TABELA) => Array(
                (CO_INSCRICAO) => Array(
                    ('Campo') => CO_PESSOA,
                    ('Entidade') => 'InscricaoEntidade',
                    ('Tipo') => '2',
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
            (ImagemEntidade::TABELA) => Array(
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
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
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
                (CO_PERFIL_AGENDA) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilAgendaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (FuncionalidadeEntidade::TABELA) => Array(
                (CO_PERFIL_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_FUNCIONALIDADE,
                    ('Entidade') => 'PerfilFuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
                (CO_CONTROLLER) => Array(
                    ('Campo') => CO_CONTROLLER,
                    ('Entidade') => 'ControllerEntidade',
                    ('Tipo') => '1',
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
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
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
            (AnotacaoEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoricoHistoriaEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (HistoriaEntidade::TABELA) => Array(
                (CO_ANOTACAO) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'AnotacaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_SESSAO) => Array(
                    ('Campo') => CO_SESSAO,
                    ('Entidade') => 'SessaoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_HISTORICO_HISTORIA) => Array(
                    ('Campo') => CO_HISTORIA,
                    ('Entidade') => 'HistoricoHistoriaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (SessaoEntidade::TABELA) => Array(
                (CO_HISTORIA) => Array(
                    ('Campo') => CO_SESSAO,
                    ('Entidade') => 'HistoriaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_MODULO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ModuloEntidade::TABELA) => Array(
                (CO_PROJETO) => Array(
                    ('Campo') => CO_PROJETO,
                    ('Entidade') => 'ProjetoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_SESSAO) => Array(
                    ('Campo') => CO_MODULO,
                    ('Entidade') => 'SessaoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ProjetoEntidade::TABELA) => Array(
                (CO_MODULO) => Array(
                    ('Campo') => CO_PROJETO,
                    ('Entidade') => 'ModuloEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ComissaoEventoEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PlanoPacoteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE,
                    ('Entidade') => 'PacoteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (PlanoEntidade::TABELA) => Array(
                (CO_PLANO_PACOTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoPacoteEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (ControllerEntidade::TABELA) => Array(
                (CO_FUNCIONALIDADE) => Array(
                    ('Campo') => CO_CONTROLLER,
                    ('Entidade') => 'FuncionalidadeEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PacoteEntidade::TABELA) => Array(
                (CO_PLANO_PACOTE) => Array(
                    ('Campo') => CO_PACOTE,
                    ('Entidade') => 'PlanoPacoteEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteEntidade::TABELA) => Array(
                (CO_PLANO) => Array(
                    ('Campo') => CO_PLANO,
                    ('Entidade') => 'PlanoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE_ASSINATURA) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteAssinaturaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PlanoAssinanteAssinaturaEntidade::TABELA) => Array(
                (CO_ASSINANTE) => Array(
                    ('Campo') => CO_ASSINANTE,
                    ('Entidade') => 'AssinanteEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PLANO_ASSINANTE) => Array(
                    ('Campo') => CO_PLANO_ASSINANTE,
                    ('Entidade') => 'PlanoAssinanteEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (EventoEntidade::TABELA) => Array(
                (CO_COMISSAO_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'ComissaoEventoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'ImagemEventoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_AGENDA_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'AgendaEventoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_INSCRICAO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'InscricaoEntidade',
                    ('Tipo') => '2',
                ),
                (CO_FLUXO_CAIXA) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'FluxoCaixaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_CATEGORIA_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'CategoriaEventoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (ImagemEventoEntidade::TABELA) => Array(
                (CO_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AgendaEventoEntidade::TABELA) => Array(
                (CO_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (FluxoCaixaEntidade::TABELA) => Array(
                (CO_EVENTO) => Array(
                    ('Campo') => CO_EVENTO,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (AgendaEntidade::TABELA) => Array(
                (CO_USUARIO) => Array(
                    ('Campo') => CO_USUARIO,
                    ('Entidade') => 'UsuarioEntidade',
                    ('Tipo') => '1',
                ),
                (CO_CATEGORIA_AGENDA) => Array(
                    ('Campo') => CO_CATEGORIA_AGENDA,
                    ('Entidade') => 'CategoriaAgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_EVENTO) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_AGENDA_EVENTO) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEventoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_ENDERECO) => Array(
                    ('Campo') => CO_ENDERECO,
                    ('Entidade') => 'EnderecoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'PerfilAgendaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (CategoriaAgendaEntidade::TABELA) => Array(
                (CO_AGENDA) => Array(
                    ('Campo') => CO_CATEGORIA_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (CategoriaEventoEntidade::TABELA) => Array(
                (CO_EVENTO) => Array(
                    ('Campo') => CO_CATEGORIA_EVENTO,
                    ('Entidade') => 'EventoEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PerfilAgendaEntidade::TABELA) => Array(
                (CO_AGENDA) => Array(
                    ('Campo') => CO_AGENDA,
                    ('Entidade') => 'AgendaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PERFIL) => Array(
                    ('Campo') => CO_PERFIL,
                    ('Entidade') => 'PerfilEntidade',
                    ('Tipo') => '1',
                ),
            ),(VisitaEntidade::TABELA) => Array(
                (CO_TRAFEGO) => Array(
                    ('Campo') => CO_TRAFEGO,
                    ('Entidade') => 'TrafegoEntidade',
                    ('Tipo') => '1',
                ),
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaEntidade::TABELA) => Array(
                (CO_PAGINA_VISITA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaVisitaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PaginaVisitaEntidade::TABELA) => Array(
                (CO_PAGINA) => Array(
                    ('Campo') => CO_PAGINA,
                    ('Entidade') => 'PaginaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_VISITA) => Array(
                    ('Campo') => CO_VISITA,
                    ('Entidade') => 'VisitaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (TrafegoEntidade::TABELA) => Array(
            ),
            (CamisaCorCamisaEntidade::TABELA) => Array(
                (CO_CAMISA) => Array(
                    ('Campo') => CO_CAMISA,
                    ('Entidade') => 'CamisaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_COR_CAMISA) => Array(
                    ('Campo') => CO_COR_CAMISA,
                    ('Entidade') => 'CorCamisaEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (CamisaEntidade::TABELA) => Array(
                (CO_CAMISA_COR_CAMISA) => Array(
                    ('Campo') => CO_CAMISA,
                    ('Entidade') => 'CamisaCorCamisaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PEDIDO_CAMISA) => Array(
                    ('Campo') => CO_CAMISA,
                    ('Entidade') => 'PedidoCamisaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_IMAGEM) => Array(
                    ('Campo') => CO_IMAGEM,
                    ('Entidade') => 'ImagemEntidade',
                    ('Tipo') => '1',
                ),
            ),
            (CorCamisaEntidade::TABELA) => Array(
                (CO_CAMISA_COR_CAMISA) => Array(
                    ('Campo') => CO_COR_CAMISA,
                    ('Entidade') => 'CamisaCorCamisaEntidade',
                    ('Tipo') => '2',
                ),
                (CO_PEDIDO_CAMISA) => Array(
                    ('Campo') => CO_COR_CAMISA,
                    ('Entidade') => 'PedidoCamisaEntidade',
                    ('Tipo') => '2',
                ),
            ),
            (PedidoCamisaEntidade::TABELA) => Array(
                (CO_CAMISA) => Array(
                    ('Campo') => CO_CAMISA,
                    ('Entidade') => 'CamisaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_COR_CAMISA) => Array(
                    ('Campo') => CO_COR_CAMISA,
                    ('Entidade') => 'CorCamisaEntidade',
                    ('Tipo') => '1',
                ),
                (CO_INSCRICAO) => Array(
                    ('Campo') => CO_INSCRICAO,
                    ('Entidade') => 'InscricaoEntidade',
                    ('Tipo') => '1',
                ),
            ),
        );
    }
}
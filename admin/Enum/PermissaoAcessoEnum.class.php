<?php

/**
 * Class TipoPagamento
 */
class PermissaoAcessoEnum extends AbstractEnum
{
    const PERFIL_MASTER = 1;
    const AUDITORIA_LISTAR = 2;
    const AUDITORIA_DETALHAR = 3;
    const USUARIO_CADASTRAR = 4;
    const USUARIO_LISTAR = 5;
    const MEU_USUARIO = 6;
    const PERFIL_LISTAR = 7;
    const PERFIL_CADASTRAR = 8;
    const FUNCIONALIDADE_LISTAR = 9;
    const FUNCIONALIDADE_CADASTRAR = 10;
    const FUNCIONALIDADE_PERFIL = 11;
    const INSCRICAO_LISTAR = 12;
    const INSCRICAO_EDITAR = 13;
    const INSCRICAO_DETALHAR_PAGAMENTO = 14;
    const INSCRICAO_SOBRE_VC = 15;
    const INSCRICAO_DETALHES = 16;

    public static $descricao = [
        PermissaoAcessoEnum::PERFIL_MASTER => 'Perfil Master',
        PermissaoAcessoEnum::AUDITORIA_LISTAR => 'Auditoria Listar',
        PermissaoAcessoEnum::AUDITORIA_DETALHAR => 'Auditoria Detalhar',
        PermissaoAcessoEnum::USUARIO_CADASTRAR => 'Usuario Cadastrar',
        PermissaoAcessoEnum::USUARIO_LISTAR => 'Usuario Listar',
        PermissaoAcessoEnum::MEU_USUARIO => 'Meu Usuario',
        PermissaoAcessoEnum::PERFIL_LISTAR => 'Perfil Listar',
        PermissaoAcessoEnum::PERFIL_CADASTRAR => 'Perfil Cadastrar',
        PermissaoAcessoEnum::FUNCIONALIDADE_LISTAR => 'Funcionalidade Listar',
        PermissaoAcessoEnum::FUNCIONALIDADE_CADASTRAR => 'Funcionalidade Cadastrar',
        PermissaoAcessoEnum::FUNCIONALIDADE_PERFIL => 'Funcionalidade Perfil',
        PermissaoAcessoEnum::INSCRICAO_LISTAR => 'Inscricao Listar',
        PermissaoAcessoEnum::INSCRICAO_EDITAR => 'Inscricao Editar',
        PermissaoAcessoEnum::INSCRICAO_DETALHAR_PAGAMENTO => 'Inscricao Detalhar Pagamento',
        PermissaoAcessoEnum::INSCRICAO_SOBRE_VC => 'Inscricao Sobre Vc',
        PermissaoAcessoEnum::INSCRICAO_DETALHES => 'Inscricao Detalhes',
    ];
}

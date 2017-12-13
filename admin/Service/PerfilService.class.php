<?php

/**
 * PerfilService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  PerfilService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(PerfilEntidade::ENTIDADE);
    }

    public function montaComboTodosPerfis()
    {
        $Perfis = $this->PesquisaTodos();
        $todosPerfis = array();
        foreach ($Perfis as $perfil) :
            $todosPerfis[$perfil->getCoPerfil()] = $perfil->getNoPerfil();
        endforeach;
        return $todosPerfis;
    }

    public function montaComboPerfil(UsuarioEntidade $usuario)
    {
        $meusPerfis = array();
        foreach ($usuario->getCoUsuarioPerfil() as $perfil) :
            $meusPerfis[$perfil->getCoPerfil()->getCoPerfil()] = $perfil->getCoPerfil()->getNoPerfil();
        endforeach;
        return $meusPerfis;
    }

    public function montaArrayPerfil(UsuarioEntidade $usuario)
    {
        $meusPerfis = array();
        foreach ($usuario->getCoUsuarioPerfil() as $perfil) :
            $meusPerfis[] = $perfil->getCoPerfil()->getCoPerfil();
        endforeach;
        return $meusPerfis;
    }


}
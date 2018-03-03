<?php

/**
 * UsuarioService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  UsuarioService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(UsuarioEntidade::ENTIDADE);
        $this->ObjetoModel = New UsuarioModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    public function PesquisaUsuariosCombo($Condicoes)
    {
        $comboUsuarios = [];
        $usuarios = $this->ObjetoModel->PesquisaAvancada($Condicoes);
        /** @var UsuarioEntidade $usuario */
        foreach ($usuarios as $usuario) {
            $comboUsuarios[$usuario->getCoUsuario()]
                = Valida::Resumi($usuario->getCoPessoa()->getNoPessoa(), 25);
        }
        return $comboUsuarios;
    }

}
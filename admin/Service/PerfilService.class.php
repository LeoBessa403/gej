<?php

/**
 * PerfilService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PerfilService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(PerfilEntidade::ENTIDADE);
        $this->ObjetoModel = New PerfilModel();
    }

    public function montaComboTodosPerfis()
    {
        $Perfis = $this->PesquisaTodos();
        $todosPerfis = array();
        /** @var PerfilEntidade $perfil */
        foreach ($Perfis as $perfil) :
            if($perfil->getCoPerfil() > 1)
            $todosPerfis[$perfil->getCoPerfil()] = $perfil->getNoPerfil();
        endforeach;
        return $todosPerfis;
    }

    public function montaComboPerfil(UsuarioEntidade $usuario)
    {
        $meusPerfis = array();
        /** @var UsuarioPerfilEntidade $perfil */
        foreach ($usuario->getCoUsuarioPerfil() as $perfil) :
            $meusPerfis[$perfil->getCoPerfil()->getCoPerfil()] = $perfil->getCoPerfil()->getNoPerfil();
        endforeach;
        return $meusPerfis;
    }

    public function montaArrayPerfil(UsuarioEntidade $usuario)
    {
        $meusPerfis = array();
        /** @var UsuarioPerfilEntidade $perfil */
        foreach ($usuario->getCoUsuarioPerfil() as $perfil) :
            $meusPerfis[] = $perfil->getCoPerfil()->getCoPerfil();
        endforeach;
        return $meusPerfis;
    }

    public function salvaPerfil($dados)
    {
        /** @var PerfilFuncionalidadeService $perfilFuncionalidadeService */
        $perfilFuncionalidadeService = $this->getService(PERFIL_FUNCIONALIDADE_SERVICE);
        /** @var ObjetoPDO PDO */
        $this->PDO = $this->getPDO();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $session = new Session();

        $perfil[NO_PERFIL] = trim($dados[NO_PERFIL]);

        $this->PDO->beginTransaction();
        if (!empty($_POST[CO_PERFIL])):
            $coPerfil = $dados[CO_PERFIL];
            $atualiza = $this->Salva($perfil, $coPerfil);
            if ($atualiza):
                $perfilFuncional[CO_PERFIL] = $coPerfil;
                $perfilFuncionalidadeService->DeletaQuando($perfilFuncional);
                $retorno[MSG] = Mensagens::OK_ATUALIZADO;
                $session->setSession(ATUALIZADO, "OK");
            endif;
        else:
            $coPerfil = $this->Salva($perfil);
            if ($coPerfil):
                $retorno[MSG] = Mensagens::OK_SALVO;
                $session->setSession(CADASTRADO, "OK");
            endif;
        endif;
        if ($coPerfil){
            $perfilFunc[CO_PERFIL] = $coPerfil;
            foreach ($dados[CO_FUNCIONALIDADE] as $coFuncionalidade) {
                $perfilFunc[CO_FUNCIONALIDADE] = $coFuncionalidade;
                $perfilFuncionalidadeService->Salva($perfilFunc);
            }
            $retorno[SUCESSO] = true;
        }
        if ($retorno[SUCESSO]) {
            $this->PDO->commit();
        } else {
            $retorno[MSG] = 'Não foi possível Salvar o Perfil';
            $this->PDO->rollBack();
        }
        return $retorno;
    }

}
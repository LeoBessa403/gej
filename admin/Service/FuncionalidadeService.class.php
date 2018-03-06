<?php

/**
 * FuncionalidadeService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  FuncionalidadeService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(FuncionalidadeEntidade::ENTIDADE);
        $this->ObjetoModel = New FuncionalidadeModel();
    }

    public function salvaFuncionalidade($dados)
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

        $funcionalidade['no_funcionalidade'] = trim($dados['no_funcionalidade']);

        $this->PDO->beginTransaction();
        if (!empty($_POST['co_funcionalidade'])):
            $coFuncionalidade = $dados['co_funcionalidade'];
            $atualiza = $this->Salva($funcionalidade, $coFuncionalidade);
            if ($atualiza):
                $perfilFuncional[CO_FUNCIONALIDADE] = $coFuncionalidade;
                $perfilFuncionalidadeService->DeletaQuando($perfilFuncional);
                $retorno[MSG] = Mensagens::OK_ATUALIZADO;
                $session->setSession(ATUALIZADO, "OK");
            endif;
        else:
            $coFuncionalidade = $this->Salva($funcionalidade);
            if ($coFuncionalidade):
                $retorno[MSG] = Mensagens::OK_SALVO;
                $session->setSession(CADASTRADO, "OK");
            endif;
        endif;
        if ($coFuncionalidade){
            $perfilFunc[CO_FUNCIONALIDADE] = $coFuncionalidade;
            foreach ($dados[CO_PERFIL] as $coPerfil) {
                $perfilFunc[CO_PERFIL] = $coPerfil;
                $perfilFuncionalidadeService->Salva($perfilFunc);
            }
            $retorno[SUCESSO] = true;
        }
        if ($retorno[SUCESSO]) {
            $this->PDO->commit();
        } else {
            $retorno[MSG] = 'Não foi possível Salvar o Usuário';
            $this->PDO->rollBack();
        }
        return $retorno;
    }

}
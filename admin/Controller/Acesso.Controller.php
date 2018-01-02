<?php

class Acesso extends AbstractController
{
    public $result;

    function ListarAcesso()
    {
        /** @var AcessoService $acessoService */
        $acessoService = $this->getService(ACESSO_SERVICE);
        $session = new Session();

        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $session->FinalizaSession(PESQUISA_AVANCADA);
        }
        if (!empty($_POST)) {
            $Condicoes = array(
                "pes." . NO_PESSOA => trim($_POST[NO_PESSOA]),
                "pes." . NU_CPF => Valida::RetiraMascara($_POST[NU_CPF]),
                "pag." . TP_SITUACAO => $_POST[TP_SITUACAO],
                "insc." . DS_MEMBRO_ATIVO => $_POST[DS_MEMBRO_ATIVO],
            );
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
            $this->result = $acessoService->PesquisaAvancada($Condicoes);
        } else {
            $this->result = $acessoService->PesquisaTodos();
        }

    }

    public function ListarAcessoPesquisaAvancada()
    {
        echo AcessoForm::Pesquisar();
    }

}

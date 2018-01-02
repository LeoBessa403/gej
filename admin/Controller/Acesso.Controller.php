<?php

class Acesso extends AbstractController
{
    public $result;

    function ListarAcesso()
    {
        /** @var AcessoService $acessoService */
        $acessoService = $this->getService(ACESSO_SERVICE);
        $this->result = $acessoService->PesquisaTodos();

    }
}

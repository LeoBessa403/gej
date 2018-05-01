<?php

class FluxoCaixa extends AbstractController
{
    public $result;

    function ListarFluxoCaixa()
    {
        /** @var FluxoCaixaService $fluxoCaixaService */
        $fluxoCaixaService = $this->getService(FLUXO_CAIXA_SERVICE);
        $this->result = $fluxoCaixaService->PesquisaTodos();
    }

    function CadastroFluxoCaixa()
    {
        /** @var FluxoCaixaService $fluxoCaixaService */
        $fluxoCaixaService = $this->getService(FLUXO_CAIXA_SERVICE);

        $id = "cadastroFluxoCaixa";

        if (!empty($_POST[$id])):
            $retorno = $fluxoCaixaService->salvaFluxoCaixa($_POST);
            if($retorno[SUCESSO]){
                Redireciona(UrlAmigavel::$modulo.'/'.UrlAmigavel::$controller.'/ListarFluxoCaixa/');
            }
        endif;

        $coFluxoCaixa = UrlAmigavel::PegaParametro(CO_FLUXO_CAIXA);
        $res = array();
        if ($coFluxoCaixa):
//            /** @var FluxoCaixaEntidade $fluxoCaixa */
//            $fluxoCaixa = $fluxoCaixaService->PesquisaUmRegistro($coFluxoCaixa);
//            $res[NO_FLUXO_CAIXA] = $fluxoCaixa->getNoFluxoCaixa();
//            $res[CO_FLUXO_CAIXA] = $fluxoCaixa->getCoFluxoCaixa();
//            $perfisFunc = [];
//            /** @var FluxoCaixaFuncionalidadeEntidade $fluxoCaixaFunc */
//            foreach ($fluxoCaixa->getCoFluxoCaixaFuncionalidade() as $fluxoCaixaFunc){
//                $perfisFunc[] = $fluxoCaixaFunc->getCoFuncionalidade()->getCoFuncionalidade();
//            }
//            $res[CO_FUNCIONALIDADE] = $perfisFunc;
        endif;

        $this->form = FluxoCaixaForm::Cadastro($res);

    }

}
   
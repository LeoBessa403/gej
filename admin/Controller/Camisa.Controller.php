<?php

class Camisa extends AbstractController
{
    public $result;
    public $form;

    function ListarCamisa()
    {
        /** @var CamisaService $camisaService */
        $camisaService = $this->getService(CAMISA_SERVICE);
        $this->result = $camisaService->PesquisaTodos();
    }

    function CadastroCamisa()
    {
        /** @var CamisaService $camisaService */
        $camisaService = $this->getService(CAMISA_SERVICE);

        $id = "cadastroCamisa";

        if (!empty($_POST[$id])):
            $retorno = $camisaService->salvaCamisa($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarCamisa/');
            }
        endif;

        $coFluxoCaixa = UrlAmigavel::PegaParametro(CO_FLUXO_CAIXA);
        $res = array();
        if ($coFluxoCaixa):
            /** @var FluxoCaixaEntidade $fluxoCaixa */
            $fluxoCaixa = $fluxoCaixaService->PesquisaUmRegistro($coFluxoCaixa);
            $res[DS_DESCRICAO] = $fluxoCaixa->getDsDescricao();
            $res[TP_FLUXO] = FluxoCaixaEnum::FLUXO_SAIDA;
            if ($fluxoCaixa->getTpFluxo() == FluxoCaixaEnum::FLUXO_ENTRADA) {
                $res[TP_FLUXO] = FluxoCaixaEnum::FLUXO_ENTRADA;
            }
            $res[CO_EVENTO] = ($fluxoCaixa->getCoEvento())
                ? $fluxoCaixa->getCoEvento()->getCoEvento() : null;
            $res[NU_VALOR] = Valida::FormataMoeda($fluxoCaixa->getNuValor());
            $res[DT_REALIZADO] = Valida::DataShow($fluxoCaixa->getDtRealizado());
            $res[DT_VENCIMENTO] = Valida::DataShow($fluxoCaixa->getDtVencimento());
            $res[ST_PAGAMENTO] = $fluxoCaixa->getStPagamento();
            $res[CO_FLUXO_CAIXA] = $fluxoCaixa->getCoFluxoCaixa();
        endif;
        $this->form = CamisaForm::Cadastro($res);

    }

}
   
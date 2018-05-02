<?php

class FluxoCaixa extends AbstractController
{
    public $result;
    public $caixa;

    function ListarFluxoCaixa()
    {
        /** @var AdministrativoService $administrativoService */
        $administrativoService = $this->getService(ADMINISTRATIVO_SERVICE);
        /** @var AdministrativoEntidade $valor */
        $valor = $administrativoService->PesquisaUmRegistro(1);
        $this->caixa = Valida::FormataMoeda( $valor->getNuFundoCaixa(), 'R$');

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
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarFluxoCaixa/');
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
            $res[NU_VALOR] = Valida::FormataMoeda($fluxoCaixa->getNuValor());
            $res[DT_REALIZADO] = Valida::DataShow($fluxoCaixa->getDtRealizado());
            $res[DT_VENCIMENTO] = Valida::DataShow($fluxoCaixa->getDtVencimento());
            $res[ST_PAGAMENTO] = $fluxoCaixa->getStPagamento();
            $res[CO_FLUXO_CAIXA] = $fluxoCaixa->getCoFluxoCaixa();
        endif;
        $this->form = FluxoCaixaForm::Cadastro($res);

    }

}
   
<?php

class FluxoCaixa extends AbstractController
{
    public $result;
    public $caixa;
    public $fluxoCaixa;
    public $totalEventoAtual;

    function ListarFluxoCaixa()
    {
        /** @var AdministrativoService $administrativoService */
        $administrativoService = $this->getService(ADMINISTRATIVO_SERVICE);
        /** @var AdministrativoEntidade $valor */
        $valor = $administrativoService->PesquisaUmRegistro(1);
        $this->caixa = Valida::FormataMoeda($valor->getNuFundoCaixa(), 'R$');

        /** @var FluxoCaixaService $fluxoCaixaService */
        $fluxoCaixaService = $this->getService(FLUXO_CAIXA_SERVICE);
        $fluxosCaixa = $fluxoCaixaService->PesquisaTodos();
        $total = 0;
        $totalInscriaoGastos = 0;
        /** @var FluxoCaixaEntidade $fluxoCaixa */
        foreach ($fluxosCaixa as $fluxoCaixa) {
            if ($fluxoCaixa->getStPagamento() == SituacaoPagamentoEnum::CONCLUIDO &&
                empty($fluxoCaixa->getCoEvento())) {
                if ($fluxoCaixa->getTpFluxo() == FluxoCaixaEnum::FLUXO_ENTRADA) {
                    $total = $total + $fluxoCaixa->getNuValor();
                } else {
                    $total = $total - $fluxoCaixa->getNuValor();
                }
            } else {
                if (!empty($fluxoCaixa->getCoEvento())) {
                    if ($fluxoCaixa->getCoEvento()->getCoEvento() == InscricaoEnum::EVENTO_ATUAL
                        && $fluxoCaixa->getStPagamento() == SituacaoPagamentoEnum::CONCLUIDO) {
                        if($fluxoCaixa->getTpFluxo() == FluxoCaixaEnum::FLUXO_SAIDA){
                            $totalInscriaoGastos = $totalInscriaoGastos + $fluxoCaixa->getNuValor();
                        }else{
                            $totalInscriaoGastos = $totalInscriaoGastos - $fluxoCaixa->getNuValor();
                        }

                    }
                }
            }
        }
        // NO CASO DE EVENTO DA ARRECADAÇÃO DE INSCRIÇÕES
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        $Condicoes[CO_EVENTO] = InscricaoEnum::EVENTO_ATUAL;
        $Condicoes[ST_STATUS] = StatusAcessoEnum::ATIVO;
        $inscricaos = $inscricaoService->PesquisaAvancada($Condicoes);
        $totalInscriao = 0;
        /** @var InscricaoEntidade $inscricao */
        foreach ($inscricaos as $inscricao) {
            if ($inscricao->getCoPagamento()->getNuValorPago()) {
                $totalInscriao = $totalInscriao + $inscricao->getCoPagamento()->getNuValorPago();
            }
        }
        $totalEventoAtual = $totalInscriao - $totalInscriaoGastos;
        $this->result = $fluxosCaixa;
        $this->fluxoCaixa = Valida::FormataMoeda($total, 'R$');
        $this->totalEventoAtual = Valida::FormataMoeda($totalEventoAtual, 'R$');
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
            $res[CO_EVENTO] = ($fluxoCaixa->getCoEvento())
                ? $fluxoCaixa->getCoEvento()->getCoEvento() : null;
            $res[NU_VALOR] = Valida::FormataMoeda($fluxoCaixa->getNuValor());
            $res[DT_REALIZADO] = Valida::DataShow($fluxoCaixa->getDtRealizado());
            $res[DT_VENCIMENTO] = Valida::DataShow($fluxoCaixa->getDtVencimento());
            $res[ST_PAGAMENTO] = $fluxoCaixa->getStPagamento();
            $res[CO_FLUXO_CAIXA] = $fluxoCaixa->getCoFluxoCaixa();
        endif;
        $this->form = FluxoCaixaForm::Cadastro($res);

    }

}
   
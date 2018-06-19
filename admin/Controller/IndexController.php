<?php

class IndexController extends AbstractController
{
    public function Index()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PDO $PDO */
        $PDO = $inscricaoService->getPDO();

        $Condicoes = [
            "insc." . ST_STATUS => StatusAcessoEnum::ATIVO,
            "insc." . CO_EVENTO => InscricaoEnum::EVENTO_ATUAL,
        ];
        $inscricoes = $inscricaoService->PesquisaAvancada($Condicoes);
        $dados['TotalInscricoes'] = count($inscricoes);
        $dados['TotalNaoMembros'] = 0;
        $dados['TotalDescontos'] = 0;
        $dados['TotalMembros'] = 0;
//        $dados['TotalServos'] = 0;
        $dados['TotalNaoPago'] = 0;
        $dados['TotalParcial'] = 0;
        $dados['TotalConcluido'] = 0;
        $dados['TotalInscricoesGarantidas'] = 0;
        $dados['TotalInscricoesCartao'] = 0;
        $dados['TotalAArrecadar'] = 0;
        $dados['TotalArrecadado'] = 0;
//        $dados['TotalRetirantes'] = 0;

        /** @var InscricaoEntidade $inscricao */
        foreach ($inscricoes as $inscricao) {

            if ($inscricao->getDsMembroAtivo() == SimNaoEnum::NAO) {
                $dados['TotalNaoMembros'] = $dados['TotalNaoMembros'] + 1;
            } else {
                $dados['TotalMembros'] = $dados['TotalMembros'] + 1;
            }
//            if ($inscricao->getStEquipeTrabalho() == SimNaoEnum::SIM) {
//                $dados['TotalServos'] = $dados['TotalServos'] + 1;
//            }

            if (!$inscricao->getCoPagamento()) {
                $PDO->beginTransaction();
                $pagamento[NU_TOTAL] = InscricaoEnum::VALOR_DINHEIRO;
                $pagamento[NU_PARCELAS] = 1;
                $pagamento[CO_INSCRICAO] = $inscricao->getCoInscricao();

                $parcela[CO_PAGAMENTO] = $pagamentoService->Salva($pagamento);
                $parcela[CO_TIPO_PAGAMENTO] = TipoPagamentoEnum::DINHEIRO;
                $parcela[NU_PARCELA] = 1;
                $parcela[NU_VALOR_PARCELA] = InscricaoEnum::VALOR_DINHEIRO;
                $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

                $retorno = $parcelamentoService->Salva($parcela);
                if ($retorno) {
                    $PDO->commit();
                } else {
                    $PDO->rollBack();
                }
            } elseif (!$inscricao->getCoPagamento()->getCoParcelamento()) {
                $parcela[CO_PAGAMENTO] = $inscricao->getCoPagamento()->getCoPagamento();
                $parcela[CO_TIPO_PAGAMENTO] = TipoPagamentoEnum::DINHEIRO;
                $parcela[NU_PARCELA] = 1;
                $parcela[NU_VALOR_PARCELA] = $inscricao->getCoPagamento()->getNuTotal();
                $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

                $parcelamentoService->Salva($parcela);
            }

            /** @var InscricaoEntidade $inscricao */
            $inscricao = $inscricaoService->PesquisaUmRegistro($inscricao->getCoInscricao());

            /** @var PagamentoEntidade $pagamentoInscricao */
            $pagamentoInscricao = $pagamentoService->PesquisaUmRegistro(
                $inscricao->getCoPagamento()->getCoPagamento()
            );

            if ($pagamentoInscricao->getNuParcelas() == 1
                && $pagamentoInscricao->getCoPrimeiraParcela()->getCoTipoPagamento()->getCoTipoPagamento()
                == TipoPagamentoEnum::CARTAO_CREDITO
            ) {
                $dados['TotalInscricoesCartao'] = $dados['TotalInscricoesCartao'] + 1;
            }

            switch ($pagamentoInscricao->getTpSituacao()) {
                case StatusPagamentoEnum::CONCLUIDO:
                    $dados['TotalConcluido'] = $dados['TotalConcluido'] + 1;
//                    if ($inscricao->getStEquipeTrabalho() == SimNaoEnum::NAO) {
//                    $dados['TotalInscricoesGarantidas'] = $dados['TotalInscricoesGarantidas'] + 1;
//                    }
                    break;
                case StatusPagamentoEnum::NAO_INICIADA:
                    $dados['TotalNaoPago'] = $dados['TotalNaoPago'] + 1;
                    break;
                case StatusPagamentoEnum::INICIADA:
                    $dados['TotalParcial'] = $dados['TotalParcial'] + 1;
//                    if ($inscricao->getStEquipeTrabalho() == SimNaoEnum::NAO) {
//                            $dados['TotalInscricoesGarantidas']= $dados['TotalInscricoesGarantidas'] + 1;
//                    }
                    break;
                default:
                    break;
            }
            /** @var ParcelamentoEntidade $pagamentoInsc */
            foreach ($pagamentoInscricao->getCoParcelamento() as $pagamentoInsc) {
                $dados['TotalArrecadado'] = $dados['TotalArrecadado'] + $pagamentoInsc->getNuValorParcelaPago();
            }
            $dados['TotalAArrecadar'] = $dados['TotalAArrecadar'] +
                ($pagamentoInscricao->getNuTotal() - $pagamentoInscricao->getNuValorDesconto());

            $dados['TotalDescontos'] = $dados['TotalDescontos'] + $pagamentoInscricao->getNuValorDesconto();
        }
       $dados['TotalInscricoesGarantidas'] = $dados['TotalParcial'] +  $dados['TotalConcluido'];

        $totalAArrecadar = $dados['TotalAArrecadar'] - $dados['TotalArrecadado'];

        // Dados para a View Dados Inscrição antes de formatar
        $dados['TotalAArrecadarDados'] = $totalAArrecadar;
        $dados['TotalArrecadadoDados'] = $dados['TotalArrecadado'];
        $dados['TotalDescontosDados'] = $dados['TotalDescontos'];


        $dados['TotalAArrecadar'] = Valida::FormataMoeda($totalAArrecadar);
        $dados['TotalArrecadado'] = Valida::FormataMoeda($dados['TotalArrecadado']);
        $dados['TotalDescontos'] = Valida::FormataMoeda($dados['TotalDescontos']);

        return $dados;
    }

}
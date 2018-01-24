<?php

/**
 * ParcelamentoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  ParcelamentoService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(ParcelamentoEntidade::ENTIDADE);
    }

    public function fazerParcelamento($nuDeparcelas, PagamentoEntidade $pagamento)
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);

        $valorPago = 0;
        $qtdParcelas = 0;
        /** @var ParcelamentoEntidade $parcela */
        foreach ($pagamento->getCoParcelamento() as $parcela){
            if($parcela->getNuValorParcelaPago()){
                $valorPago = $valorPago + $parcela->getNuValorParcelaPago();
                $qtdParcelas++;
            }
        }
        $valorInscricao = $pagamentoService->pegaValorInscricao($pagamento);

        $this->Deleta($pagamento->getCoPagamento());
        for ($i = $qtdParcelas; $i < $nuDeparcelas; $i++) {
            $novaParcela = array(
                NU_PARCELA => $i + 1,
                NU_VALOR_PARCELA => (($valorInscricao - $valorPago) / ($nuDeparcelas - $qtdParcelas)),
                DT_VENCIMENTO => Valida::DataAtualBanco('Y-m-d'),
                CO_TIPO_PAGAMENTO => TipoPagamentoEnum::DINHEIRO,
                CO_PAGAMENTO => $pagamento->getCoPagamento(),
            );
            $this->Salva($novaParcela);
        }
    }

    public function Deleta($coPagamento)
    {
        $deleta = new Deleta();
        $where = "where ".CO_PAGAMENTO. " = ".$coPagamento.
            " and ".NU_VALOR_PARCELA_PAGO. " is null";
        $deleta->Deletar(ParcelamentoEntidade::TABELA, $where);
        return $deleta->getResult();
    }

}
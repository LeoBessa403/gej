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
        
        $valorInscricao = $pagamentoService->pegaValorInscricao($pagamento);
        $this->DeletaQuando([CO_PAGAMENTO => $pagamento->getCoPagamento()]);
        for ($i = 0; $i < $nuDeparcelas; $i++) {
            $novaParcela = array(
                NU_PARCELA => $i + 1,
                NU_VALOR_PARCELA => ($valorInscricao / $nuDeparcelas),
                DT_VENCIMENTO => Valida::DataAtualBanco('Y-m-d'),
                CO_TIPO_PAGAMENTO => TipoPagamentoEnum::DINHEIRO,
                CO_PAGAMENTO => $pagamento->getCoPagamento(),
            );
            $this->Salva($novaParcela);
        }
    }

}
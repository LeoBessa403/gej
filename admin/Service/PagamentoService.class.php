<?php

/**
 * PagamentoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  PagamentoService extends AbstractService
{

    public function __construct()
    {
        parent::__construct(PagamentoEntidade::ENTIDADE);
    }
    
    public function pegaValorInscricao(PagamentoEntidade $pagamento)
    {
        $valorInscricao = InscricaoEnum::VALOR_DINHEIRO;
        if( $pagamento->getCoParcelamento()){
            $tipoPagamento = $pagamento->getCoParcelamento()->getCoTipoPagamento();
            $valorInscricao = ($tipoPagamento == TipoPagamentoEnum::CARTAO_CREDITO)
                ? InscricaoEnum::VALOR_CARTAO : InscricaoEnum::VALOR_DINHEIRO;
        }
        return $valorInscricao;
    }


}
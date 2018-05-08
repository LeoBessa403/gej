<?php

/**
 * PagamentoModel.class [ MODEL ]
 * @copyright (c) 2017, Leo Bessa
 */
class  PagamentoModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(PagamentoEntidade::ENTIDADE);
    }


    public function delataParcelasPagamento($coPagamento)
    {
        /** @var ParcelamentoModel $parcModel */
        $parcModel = New ParcelamentoModel();
        /** @var PagamentoEntidade $pagamento */
        $pagamento = $this->PesquisaUmRegistro($coPagamento);
        /** @var ParcelamentoEntidade $parcela */
        foreach ($pagamento->getCoParcelamento() as $parcela){
            if(!$parcela->getNuValorParcelaPago())
                $parcModel->Deleta($parcela->getCoParcelamento());
        }


    }
}
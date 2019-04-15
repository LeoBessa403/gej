<?php

/**
 * TamanhoCamisaService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  TamanhoCamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TamanhoCamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New TamanhoCamisaModel();
    }


    static function montaComboTamanhoCamisas()
    {
        /** @var TamanhoCamisaService $tamanhoCamisaService */
        $tamanhoCamisaService = new TamanhoCamisaService();
        $comboTamanhos = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        $tamanhos = $tamanhoCamisaService->PesquisaTodos();
        $tamanhos = array_reverse($tamanhos);
        /** @var TamanhoCamisaEntidade $tamanho */
        foreach ($tamanhos as $tamanho) {
            $comboTamanhos[$tamanho->getCoTamanhoCamisa()] = $tamanho->getNoTamanho();
        }
        return $comboTamanhos;
    }

}
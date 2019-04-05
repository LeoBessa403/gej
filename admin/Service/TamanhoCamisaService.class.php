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


}
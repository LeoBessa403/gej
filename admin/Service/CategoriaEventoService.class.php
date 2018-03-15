<?php

/**
 * TBCATEGORIAEVENTOService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  TBCATEGORIAEVENTOService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(TBCATEGORIAEVENTOEntidade::ENTIDADE);
        $this->ObjetoModel = New TBCATEGORIAEVENTOModel();
    }


}
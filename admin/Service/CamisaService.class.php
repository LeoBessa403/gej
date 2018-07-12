<?php

/**
 * CamisaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New CamisaModel();
    }


}
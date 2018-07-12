<?php

/**
 * CamisaCorCamisaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CamisaCorCamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CamisaCorCamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New CamisaCorCamisaModel();
    }


}
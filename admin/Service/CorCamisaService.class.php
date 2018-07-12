<?php

/**
 * CorCamisaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CorCamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CorCamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New CorCamisaModel();
    }


}
<?php

/**
 * AgendaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AgendaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New AgendaModel();
    }


}
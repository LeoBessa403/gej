<?php

/**
 * PedidoCamisaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  PedidoCamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PedidoCamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New PedidoCamisaModel();
    }


}
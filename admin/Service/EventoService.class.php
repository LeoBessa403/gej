<?php

/**
 * EventoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  EventoService extends AbstractService
{

    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(EventoEntidade::ENTIDADE);
        $this->ObjetoModel = New EventoModel();
    }


}
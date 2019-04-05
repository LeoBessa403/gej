<?php

/**
 * PedCamTamanhoCorService.class [ SEVICE ]
 * @copyright (c) 2019, Leo Bessa
 */
class  PedCamTamanhoCorService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(PedCamTamanhoCorEntidade::ENTIDADE);
        $this->ObjetoModel = New PedCamTamanhoCorModel();
    }


}
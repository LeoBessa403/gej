<?php

/**
 * AdministrativoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AdministrativoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AdministrativoEntidade::ENTIDADE);
        $this->ObjetoModel = New AdministrativoModel();
    }


}
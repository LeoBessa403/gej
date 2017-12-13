<?php

/**
 * InscricaoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  InscricaoService extends AbstractService
{
    private $ObjetoModel; 
    
    public function __construct()
    {
        parent::__construct(InscricaoEntidade::ENTIDADE);
        $this->ObjetoModel = New InscricaoModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

}
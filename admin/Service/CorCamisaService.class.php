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

    public static function PesquisaCoresCamisaCombo()
    {
        /** @var CorCamisaService $corCamisaService */
        $corCamisaService = new CorCamisaService();
        $comboCores = [];
        $cores = $corCamisaService->PesquisaTodos();
        /** @var CorCamisaEntidade $cor */
        foreach ($cores as $cor) {
            $comboCores[$cor->getCoCorCamisa()] = $cor->getNoCorCamisa();
        }
        return $comboCores;
    }

}
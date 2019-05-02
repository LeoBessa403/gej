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

    public static function PesquisaCoresCamisaCombo($coCamisa)
    {
        /** @var CamisaCorCamisaService $camisaCorCamisaService */
        $camisaCorCamisaService = new CamisaCorCamisaService();
        $comboCores = [];
        /** @var CamisaCorCamisaEntidade $CamisaCorCamisa */
        $CamisaCorCamisa = $camisaCorCamisaService->PesquisaTodos([
            CO_CAMISA => $coCamisa
        ]);

        /** @var CamisaCorCamisaEntidade $camisaCorCam */
        foreach ($CamisaCorCamisa as $camisaCorCam) {
            $comboCores[$camisaCorCam->getCoCorCamisa()->getCoCorCamisa()]
                = $camisaCorCam->getCoCorCamisa()->getNoCorCamisa();
        }
        return $comboCores;
    }

    public static function PesquisaCoresCombo()
    {
        /** @var CorCamisaService $corCamisaService */
        $corCamisaService = new CorCamisaService();
        $comboCores = [];
        $CoresCamisa = $corCamisaService->PesquisaTodos();

        /** @var CorCamisaEntidade $CorCamisa */
        foreach ($CoresCamisa as $CorCamisa) {
            $comboCores[$CorCamisa->getCoCorCamisa()]
                = $CorCamisa->getNoCorCamisa();
        }
        return $comboCores;
    }

}
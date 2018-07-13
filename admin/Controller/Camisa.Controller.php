<?php

class Camisa extends AbstractController
{
    public $result;
    public $form;

    function ListarCamisa()
    {
        /** @var CamisaService $camisaService */
        $camisaService = $this->getService(CAMISA_SERVICE);
        $this->result = $camisaService->PesquisaTodos();
    }

    function CadastroCamisa()
    {
        /** @var CamisaService $camisaService */
        $camisaService = $this->getService(CAMISA_SERVICE);

        $id = "cadastroCamisa";

        if (!empty($_POST[$id])):
            $retorno = $camisaService->salvaCamisa($_POST, $_FILES);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarCamisa/');
            }
        endif;

        $coCamisa = UrlAmigavel::PegaParametro(CO_CAMISA);
        $res = array();
        if ($coCamisa):
            /** @var CamisaEntidade $camisa */
            $camisa = $camisaService->PesquisaUmRegistro($coCamisa);

            $res[NO_CAMISA] = $camisa->getNoCamisa();
            $cores = [];
            /** @var CamisaCorCamisaEntidade $corCamisa */
            foreach ($camisa->getCoCamisaCorCamisa() as $corCamisa) {
                $cores[] = $corCamisa->getCoCorCamisa()->getCoCorCamisa();
            }
            $res[CO_COR_CAMISA] = $cores;
            $res[CO_CAMISA] = $camisa->getCoCamisa();
            $res[DS_CAMINHO] = ($camisa->getCoImagem())
                ? "Camisa/" . $camisa->getCoImagem()->getDsCaminho() : null;

        endif;
        $this->form = CamisaForm::Cadastro($res);

    }

}
   
<?php

class Camisa extends AbstractController
{
    public $result;
    public $form;
    public $camisa;

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
        $res[TP_PEDIDO] = 'checked';
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
            $res[NU_VALOR_CUSTO] = Valida::FormataMoeda($camisa->getNuValorCusto());
            $res[NU_VALOR_VENDA] = Valida::FormataMoeda($camisa->getNuValorVenda());
            $res[DS_CAMINHO] = ($camisa->getCoImagem())
                ? "Camisa/" . $camisa->getCoImagem()->getDsCaminho() : null;
            $res[TP_PEDIDO] = ($camisa->getTpPedido() == 'S')
                ? 'checked' : '';

        endif;
        $this->form = CamisaForm::Cadastro($res);
    }

    function CadastroPedido()
    {
        /** @var PedidoCamisaService $pedidoCamisaService */
        $pedidoCamisaService = $this->getService(PEDIDO_CAMISA_SERVICE);

        $id = "cadastroCamisa";

        if (!empty($_POST[$id])):
            $retorno = $pedidoCamisaService->salvaPedidoCamisa($_POST);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarPedido/');
            }
        endif;

        $coCamisa = UrlAmigavel::PegaParametro(CO_CAMISA);
        $res = array();
        $res[ST_ESTOQUE] = '';
        $res[ST_PEDIDO] = '';
        $res[TP_SITUACAO] = '';
        $res[ST_ENTREGUE] = '';
        if ($coCamisa):
            $res[CO_CAMISA] = $coCamisa;
        endif;
        $this->form = CamisaForm::CadastroPedido($res);
    }

    public function ListarPedido()
    {
        /** @var PedCamTamanhoCorService $pedCamTamanhoCorService */
        $pedCamTamanhoCorService = $this->getService(PED_CAM_TAMANHO_COR_SERVICE);
        /** @var CamisaService $camisaService */
        $camisaService = $this->getService(CAMISA_SERVICE);

        $coCamisa = UrlAmigavel::PegaParametro(CO_CAMISA);
        if (!$coCamisa) {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarCamisa/');
        }
        /** @var CamisaEntidade $camisa */
        $camisa = $camisaService->PesquisaUmRegistro($coCamisa);
        /** @var PedCamTamanhoCorEntidade $pedidosCamisa */
        $pedidosCamisa = $pedCamTamanhoCorService->PesquisaTodos([CO_CAMISA => $coCamisa]);

        $this->result = $pedidosCamisa;
        $this->camisa = $camisa;
    }

}
   
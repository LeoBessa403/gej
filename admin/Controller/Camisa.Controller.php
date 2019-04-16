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
        $coPedidoCamisa = null;

        if (!empty($_POST[$id])) {
            $retorno = $pedidoCamisaService->salvaPedidoCamisa($_POST);
            $coCamisa = $_POST[CO_CAMISA];
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarPedido/' .
                    Valida::GeraParametro(CO_CAMISA . "/" . $coCamisa));
            }
        } else {
            $coCamisa = UrlAmigavel::PegaParametro(CO_CAMISA);
            $coPedidoCamisa = UrlAmigavel::PegaParametro(CO_PEDIDO_CAMISA);
        }
        $res = array();
        $res[ST_ESTOQUE] = '';
        $res[NU_QUANTIDADE] = 1;
        if ($coCamisa):
            $res[CO_CAMISA] = $coCamisa;
            if($coPedidoCamisa):
                /** @var PedidoCamisaEntidade $pedidoCamisa */
                $pedidoCamisa = $pedidoCamisaService->PesquisaUmRegistro($coPedidoCamisa);
                $res[ST_ESTOQUE] = ($pedidoCamisa->getStEstoque() == 'S')
                    ? 'checked' : '';
                $res[NO_PESSOA] = $pedidoCamisa->getNoPessoa();
                $res[ST_PEDIDO] = $pedidoCamisa->getStPedido();
                $res[ST_PAGAMENTO] = $pedidoCamisa->getStPagamento();
                $res[CO_COR_CAMISA] = $pedidoCamisa->getCoPedCamTamanhoCor()->getCoCorCamisa()->getCoCorCamisa();
                $res[NU_QUANTIDADE] = $pedidoCamisa->getCoPedCamTamanhoCor()->getNuQuantidade();
                $res[DT_PEDIDO] = ($pedidoCamisa->getDtPedido())
                    ? Valida::DataShow($pedidoCamisa->getDtPedido()) : null;
                $res[DT_ENTREGUE] = ($pedidoCamisa->getDtEntregue())
                    ? Valida::DataShow($pedidoCamisa->getDtEntregue()) : null;
                $res[CO_TAMANHO_CAMISA] = $pedidoCamisa->getCoPedCamTamanhoCor()->getCoTamanhoCamisa()->getCoTamanhoCamisa();
                $res[DS_OBSERVACAO] = $pedidoCamisa->getDsObservacao();
                $res[CO_PEDIDO_CAMISA] = $coPedidoCamisa;
                $res[CO_PED_CAM_TAMANHO_COR] = $pedidoCamisa->getCoPedCamTamanhoCor()->getCoPedCamTamanhoCor();
            endif;
        else:
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarPedido/');
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
   
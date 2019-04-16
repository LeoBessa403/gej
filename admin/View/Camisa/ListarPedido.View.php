<div class="main-content">
    <div class="container">
        <!-- start: PAGE HEADER -->
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-home-3"></i>
                        <a href="#">
                            Home
                        </a>
                    </li>
                    <li class="active">
                        Pedidos da Camisa
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Pedidos
                        <small> Detalhes do pedido</small>
                        <?php
                        echo '<a href="' . PASTAADMIN . UrlAmigavel::$controller . '/CadastroPedido/'.
                            Valida::GeraParametro(CO_CAMISA . "/" . $camisa->getCoCamisa()) .'"
                                 class="btn btn-green tooltips" data-original-title="Criar '.UrlAmigavel::$controller .'" data-placement="top">
                            <i class="fa fa-plus"></i> Fazer Pedido </a>';
                        ?>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- end: PAGE HEADER -->
        <!-- start: PAGE CONTENT -->
        <div class="row">
            <div class="col-sm-3 dados-listados">
                <p>Camisa:<br/>
                    <big><b>
                            <?= $camisa->getNoCamisa(); ?>
                        </b></big></p>
                <p>Cores da Camisa:<br/>
                    <big><b>
                            <?php
                            $cores = '';
                            /** @var CamisaCorCamisaEntidade $cor */
                            foreach ($camisa->getCoCamisaCorCamisa() as $cor){
                                $cores .= $cor->getCoCorCamisa()->getNoCorCamisa(). ', ';
                            }
                            echo $cores;
                            ?>
                        </b></big></p>

            </div>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Pedidos da Camisa
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::deletaRegistro("PedidoCamisa");
                        Modal::confirmacao("confirma_PedidoCamisa");
                        $arrColunas = array('Pessoa', 'Tamanho', 'Cor', 'Pagamento', 'Quantidade', 'Status Pedido', 'Ação');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

                        /** @var PedCamTamanhoCorEntidade  $res */
                        foreach ($result as $res) :
                            $acao = '<a href="' . PASTAADMIN . 'Camisa/CadastroPedido/'
                                . Valida::GeraParametro(CO_PEDIDO_CAMISA . "/" .
                                    $res->getCoPedidoCamisa()->getCoPedidoCamisa() . "/" .
                                CO_CAMISA . "/" . $res->getCoCamisa()->getCoCamisa()) . '" class="btn btn-primary tooltips"
                                   data-original-title="Editar Registro" data-placement="top">
                                    <i class="fa fa-clipboard"></i>
                                </a>
                                <a data-toggle="modal" role="button" class="btn btn-bricky tooltips deleta" 
                                    id="'. $res->getCoPedidoCamisa()->getCoPedidoCamisa() .'" 
                                   href="#PedidoCamisa" data-original-title="Excluir Registro" data-placement="top">
                                    <i class="fa fa-trash-o"></i>
                                </a>';
                            $grid->setColunas($res->getCoPedidoCamisa()->getNoPessoa());
                            $grid->setColunas($res->getCoTamanhoCamisa()->getNoTamanho(),2);
                            $grid->setColunas($res->getCoCorCamisa()->getNoCorCamisa(),2);
                            $grid->setColunas(Valida::Pagamento($res->getCoPedidoCamisa()->getStPagamento()));
                            $grid->setColunas($res->getNuQuantidade());
                            $grid->setColunas(StatusPedidoEnum::getDescricaoValor($res->getCoPedidoCamisa()->getStPedido()));
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoPedidoCamisa()->getCoPedidoCamisa());
                        endforeach;

                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
                <?php Valida::geraBtnVoltar(); ?>
                <br><br><br>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
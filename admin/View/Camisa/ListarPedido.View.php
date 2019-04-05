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
                        $arrColunas = array('Pessoa', 'Tamanho', 'Cor', 'Pagamento', 'Pedida', 'Entregue', 'Ação');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

//                        /** @var PedidoCamisaEntidade $res */
                        foreach ($result as $res) :

                            if ($res->getTpSituacao() == "N"):
                                $situacao = Valida::Pagamento("N");
                            else:
                                $situacao = Valida::Pagamento("C");
                            endif;

                            $acao = '<a href="' . PASTAADMIN . 'Inscricao/EditarParcela/'
                                . Valida::GeraParametro("parc/" . $res->getCoPedidoCamisa()) . '" class="btn btn-primary tooltips"
                                   data-original-title="Editar Registro" data-placement="top">
                                    <i class="fa fa-clipboard"></i>
                                </a>';
//                            $grid->setColunas($res->getNoPessoa());
//                            $grid->setColunas(FuncoesSistema::TamanhoCamisa($res->getNuCamisa()),2);
//                            $grid->setColunas($res->getCoCorCamisa()->getNoCorCamisa(),2);
//                            $grid->setColunas($situacao);
//                            $grid->setColunas(Valida::SituacaoSimNao($res->getStPedido()));
//                            $grid->setColunas(Valida::SituacaoSimNao($res->getStEntregue()));
//                            $grid->setColunas($acao, 1);
//                            $grid->criaLinha($res->getCoPedidoCamisa());
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
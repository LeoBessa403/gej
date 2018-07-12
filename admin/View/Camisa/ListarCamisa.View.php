<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Camisa
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Camisa
                        <small>Listar Camisa</small>
                        <?php Valida::geraBtnNovo(); ?>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Camisa
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::Foto();
                        Modal::deletaRegistro("Camisa");
                        Modal::confirmacao("confirma_Camisa");
                        $arrColunas = array('Foto', 'Camisa', 'Cores', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var CamisaEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'Camisa/CadastroCamisa/' .
                                Valida::GeraParametro(CO_CAMISA . "/" . $res->getCoCamisa()) .
                                '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>
                                 <a data-toggle="modal" role="button" class="btn btn-bricky 
                                        tooltips deleta" id="' . $res->getCoCamisa() . '" data-msg-restricao="MSG01"
                                           href="#Camisa" data-original-title="Excluir Registro" data-placement="top">
                                            <i class="fa fa-trash-o"></i>
                                        </a>';
                            $cores = '';
                            /** @var CamisaCorCamisaEntidade $cor */
                            foreach ($res->getCoCamisaCorCamisa() as $cor){
                                $cores .= $cor->getCoCorCamisa()->getNoCorCamisa(). ', ';
                            }

                            $imagem = Valida::GetMiniatura(
                                'Camisa/' . $res->getCoImagem()->getDsCaminho(),
                                Valida::ValNome($res->getNoCamisa()),
                                90, 90, "circle-img"
                            );

                            $foto = '<a data-toggle="modal" class="fotos" 
                                id="' . $res->getCoCamisa() . '" 
                                      href="#Foto" title="' . $res->getNoCamisa() . '" 
                                      data-placement="top">' . $imagem . '</a>';

                            $grid->setColunas($foto, 2);
                            $grid->setColunas($res->getNoCamisa());
                            $grid->setColunas($cores);
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoCamisa());
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
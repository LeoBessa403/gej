<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Fluxos de Caixa
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Fluxos de Caixa
                        <small>Listar Fluxos</small>
                        <?php Valida::geraBtnNovo(); ?>
                    </h1>
                </div>
                <div class="col-sm-2">
                    <div class="alert alert-block alert-success fade in pulse FluxoCaixa">
                        <h4 class="alert-heading"><i class="fa fa-star"></i> Valor em Caixa</h4>
                        <h5><?= $caixa; ?></h5>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="alert alert-block alert-info fade in fadeIn FluxoCaixa">
                        <h4 class="alert-heading"><i class="fa fa-money"></i> Total do Fluxo</h4>
                        <h5><?= $fluxoCaixa; ?></h5>
                    </div>
                </div>
                <div class="col-sm-2">
                    <div class="alert alert-block alert-warning fade in fadeIn FluxoCaixa">
                        <h4 class="alert-heading"><i class="fa fa-info-circle"></i> Valor Inscrições</h4>
                        <h5><?= $inscricaoCaixa; ?></h5>
                    </div>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Fluxos de Caixa
                    </div>
                    <div class="panel-body">
                        <?php
                        Modal::load();
                        Modal::deletaRegistro("FluxoCaixa");
                        Modal::confirmacao("confirma_FluxoCaixa");
                        $arrColunas = array('Descrição', 'Tipo de Fluxo', 'Situação Pag.', 'Valor R$',
                            'Data Realizado', 'Data Vencimento', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        /** @var FluxoCaixaEntidade $res */
                        foreach ($result as $res):
                            $acao = '<a href="' . PASTAADMIN . 'FluxoCaixa/CadastroFluxoCaixa/' .
                                Valida::GeraParametro(CO_FLUXO_CAIXA . "/" . $res->getCoFluxoCaixa()) .
                                '" class="btn btn-primary tooltips" 
                                    data-original-title="Editar Registro" data-placement="top">
                                     <i class="fa fa-clipboard"></i>
                                 </a>
                                 <a data-toggle="modal" role="button" class="btn btn-bricky 
                                        tooltips deleta" id="' . $res->getCoFluxoCaixa() . '" data-msg-restricao="MSG01"
                                           href="#FluxoCaixa" data-original-title="Excluir Registro" data-placement="top">
                                            <i class="fa fa-trash-o"></i>
                                        </a>';
                            $grid->setColunas($res->getDsDescricao());
                            $grid->setColunas(FuncoesSistema::retornoFluxoCaixa($res->getTpFluxo()));
                            $grid->setColunas(FuncoesSistema::Pagamento($res->getStPagamento()));
                            $grid->setColunas(Valida::FormataMoeda($res->getNuValor()));
                            $grid->setColunas(Valida::DataShow($res->getDtRealizado()));
                            $grid->setColunas(Valida::DataShow($res->getDtVencimento()));
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoFluxoCaixa());
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
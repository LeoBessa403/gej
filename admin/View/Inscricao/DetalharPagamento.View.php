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
                        Pagamento da Inscrição
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Pagamento
                        <small> Detalhes do Pagamento</small>
                    </h1>
                </div>
                <!-- end: PAGE TITLE & BREADCRUMB -->
            </div>
        </div>
        <!-- end: PAGE HEADER -->
        <!-- start: PAGE CONTENT -->
        <div class="row">
            <div class="col-sm-6" style="padding: 10px; background-color: #fbfbfb; 
                                                 margin-left: 15px;">
                <p>Nome:<br/>
                    <big><b>
                            <?php echo $inscricao->getCoPessoa()->getNoPessoa(); ?>
                        </b></big></p>
                <p>Servo:<br/>
                    <big><b>
                            <?php
                            echo FuncoesSistema::SituacaoSimNao($inscricao->getStEquipeTrabalho());
                            ?>
                        </b></big></p>
                <p>Membro GEJ:<br/>
                    <big><b>
                            <?php echo FuncoesSistema::SituacaoSimNao($inscricao->getDsMembroAtivo()); ?>
                        </b></big></p>
                <p>Parcelas:<br/>
                    <big><b>
                            <?php
                            $parcelas = $inscricao->getCoPagamento()->getNuParcelas();
                            echo "0".$parcelas; ?>
                        </b></big></p>
                <p>Situação do Pagamento:<br/>
                    <big><b><?php
                            echo FuncoesSistema::Pagamento($inscricao->getCoPagamento()->getTpSituacao());
                            ?></b></big></p>
<!--                <form action="admin/Pagamento/ListarPagamento" method="post">-->
<!--                    <button data-style="zoom-out" class="btn btn-primary ladda-button" type="submit"-->
<!--                            style="margin-top: 10px;">-->
<!--                        <span class="ladda-label"> Voltar aos pagamentos </span>-->
<!--                        <i class="clip-arrow-right-2"></i>-->
<!--                        <span class="ladda-spinner"></span>-->
<!--                    </button>-->
<!--                </form>-->
            </div>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Parcelas do Pagamento
                    </div>
                    <div class="panel-body">
                        <?php
                        $arrColunas = array('Parcela', 'Valor R$', 'Vencimento', 'Situação', 'Observação', 'Ação');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

                        /** @var ParcelamentoEntidade $res */
                        foreach ($pagamentoInsc->getCoParcelamento() as $res) :

                            if ($res->getNuValorParcelaPago() == null):
                                $valor = $res->getNuValorParcela();
                                $situacao = FuncoesSistema::Pagamento("N");
                            else:
                                $valor = $res->getNuValorParcelaPago();
                                $situacao = FuncoesSistema::Pagamento("C");
                            endif;
                            if ($res->getDtVencimentoPago() == null):
                                $venc = Valida::DataShow($res->getDtVencimento(), "d/m/Y");
                            else:
                                $venc = Valida::DataShow($res->getDtVencimentoPago(), "d/m/Y");
                            endif;
                            $acao = '<a href="' . PASTAADMIN . 'Inscricao/EditarParcela/'
                                . Valida::GeraParametro("parc/" . $res->getCoParcelamento()) . '" class="btn btn-primary tooltips"
                                   data-original-title="Editar Registro" data-placement="top">
                                    <i class="fa fa-clipboard"></i>
                                </a>';
                            $grid->setColunas("0".$res->getNuParcela());
                            $grid->setColunas(Valida::FormataMoeda($valor));
                            $grid->setColunas($venc);
                            $grid->setColunas($situacao);
                            $grid->setColunas($res->getDsObservacao());
                            $grid->setColunas($acao, 1);
                            $grid->criaLinha($res->getCoParcelamento());
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
<?php
/** @var InscricaoEntidade $inscricao */
$inscricao = $inscricao;
/** @var ParcelamentoEntidade $parcela */
$parcela = $inscricao->getCoPagamento()->getCoPrimeiraParcela();
$tipoPagamento = TipoPagamentoEnum::getDescricaoValor($parcela->getCoTipoPagamento());
?>
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
            <div class="col-sm-3 dados-listados">
                <p>Nome:<br/>
                    <big><b>
                            <?php echo $inscricao->getCoPessoa()->getNoPessoa(); ?>
                        </b></big></p>
                <p>Servo:<br/>
                    <big><b>
                            <?php
                            echo Valida::SituacaoSimNao($inscricao->getStEquipeTrabalho());
                            ?>
                        </b></big></p>
                <p>Membro GEJ:<br/>
                    <big><b>
                            <?php echo Valida::SituacaoSimNao($inscricao->getDsMembroAtivo()); ?>
                        </b></big></p>
                <p>Parcelas:<br/>
                    <big><b>
                            <?php
                            $parcelas = $inscricao->getCoPagamento()->getNuParcelas();
                            echo "0".$parcelas; ?>
                        </b></big></p>
                <p>Tipo de Pagamento:<br/>
                    <big><b><?php echo $tipoPagamento; ?></b></big></p>
                <p>Situação do Pagamento:<br/>
                    <big><b><?php
                            echo Valida::Pagamento($inscricao->getCoPagamento()->getTpSituacao());
                            ?></b></big></p>
                <p>Desconto R$:<br/>
                    <big><b><?php echo Valida::FormataMoeda($inscricao->getCoPagamento()->getNuValorDesconto()); ?></b></big></p>
                <p>Total Pago R$:<br/>
                    <big><b><?php echo Valida::FormataMoeda($inscricao->getCoPagamento()->getNuValorPago()); ?></b></big></p>
            </div>
            <div class="col-md-8" style="margin-top: -16px;">
                <?php echo $form; ?>
            </div>
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-external-link-square"></i>
                        Parcelas do Pagamento
                    </div>
                    <div class="panel-body">
                        <?php
                        $arrColunas = array('Parcela', 'Valor R$', 'Vencimento', 'Situação Parcela','Resp. da Parcela', 'Observação', 'Ação');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

                        /** @var ParcelamentoEntidade $res */
                        foreach ($pagamentoInsc->getCoParcelamento() as $res) :

                            if ($res->getNuValorParcelaPago() == null):
                                $valor = $res->getNuValorParcela();
                                $situacao = Valida::Pagamento("N");
                            else:
                                $valor = $res->getNuValorParcelaPago();
                                $situacao = Valida::Pagamento("C");
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
                            $grid->setColunas("0".$res->getNuParcela(),2);
                            $grid->setColunas(Valida::FormataMoeda($valor),2);
                            $grid->setColunas($venc,2);
                            $grid->setColunas($situacao,2);
                            $grid->setColunas((!empty($usuParcelas[$res->getCoParcelamento()])) ?
                                $usuParcelas[$res->getCoParcelamento()] : null);
                            $grid->setColunas($res->getDsObservacao());
                            $grid->setColunas($acao, 1);
                            $grid->criaLinha($res->getCoParcelamento());
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
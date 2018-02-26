<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Auditoria
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>

                </ol>
                <div class="page-header">
                    <h1>Auditoria
                        <small>Listar Registros</small>
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
                        Auditoria
                    </div>
                    <div class="panel-body">
                        <div class="panel-group accordion-custom accordion-teal" id="accordion">
                            <?php
                            /** @var AuditoriaEntidade $auditoria */
                            foreach ($result as $auditoria) { ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse"
                                               data-parent="#accordion"
                                               href="#collapse<?php echo $auditoria->getCoAuditoria(); ?>">
                                                <i class="icon-arrow"></i>
                                                <?php echo $auditoria->getDtRealizado() . '  //  ' .
                                                    $auditoria->getCoUsuario()->getCoPessoa()->getNoPessoa(); ?>
                                            </a></h4>
                                    </div>
                                    <div id="collapse<?php echo $auditoria->getCoAuditoria(); ?>"
                                         class="panel-collapse collapse" style="height: 0px;">
                                        <div class="panel-body">
                                            <div class="tabbable">
                                                <ul id="myTab<?php echo $auditoria->getCoAuditoria(); ?>"
                                                    class="nav nav-tabs tab-padding tab-space-3 tab-pane">
                                                    <?php
                                                    /** @var AuditoriaTabelaEntidade $auditoriaTabela */
                                                    foreach ($auditoria->getCoAuditoriaTabela() as $auditoriaTabela) { ?>
                                                        <li class="">
                                                            <a href="#panel_tab<?php echo $auditoriaTabela->getCoAuditoriaTabela(); ?>"
                                                               data-toggle="tab">
                                                            <span class="badge badge-<?= FuncoesSistema::getBadgeLabel($auditoriaTabela->getTpOperacao()); ?>">
                                                            <?php echo str_replace('TB_', '', $auditoriaTabela->getNoTabela()); ?></span>
                                                            </a>
                                                        </li>
                                                    <?php } ?>
                                                </ul>
                                                <div class="tab-content">
                                                    <?php
                                                    /** @var AuditoriaTabelaEntidade $auditoriaTabela */
                                                    foreach ($auditoria->getCoAuditoriaTabela() as $auditoriaTabela) { ?>
                                                        <div class="tab-pane"
                                                             id="panel_tab<?php echo $auditoriaTabela->getCoAuditoriaTabela(); ?>">
                                                            <b>Ação Realizada: <?php
                                                                echo AuditoriaEnum::getDescricaoValor($auditoriaTabela->getTpOperacao());
                                                                ?></b>


                                                        </div>
                                                    <?php } ?>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
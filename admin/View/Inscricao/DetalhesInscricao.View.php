<style>
    table > thead > tr > th,
    table > tbody > tr > th,
    table > thead > tr > td,
    table > tbody > tr > td {
        padding: 8px;
        line-height: 1.428571429;
        vertical-align: top;
        border-top: 1px solid #ddd;
    }
</style>
<div class="main-content">
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <!-- start: PAGE TITLE & BREADCRUMB -->
                <ol class="breadcrumb">
                    <li>
                        <i class="clip-grid-6"></i>
                        <a href="#">
                            Inscrições
                        </a>
                    </li>
                    <li class="active">
                        Listar
                    </li>
                </ol>
                <div class="page-header">
                    <h1>Inscrições
                        <small>Detalhes Inscrições</small>
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
                        Inscrições
                    </div>
                    <div class="panel-body">
                        <?php
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Inscrições');
                        ?>
                        <h2>
                            <small>Inscrições Cadastradas</small>
                        </h2>
                        <?php
                        Modal::load();
                        $arrColunas = array('Nome', 'Camisa', 'Contatos', 'Participa Pastoral', 'Particiopou Retiro');
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();

                        /** @var InscricaoEntidade $inscricao */
                        foreach ($result as $inscricao):
                            $contato = Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel1());
                            if ($inscricao->getCoPessoa()->getCoContato()->getNuTel2()) {
                                $contato = $contato . ' / ' . Valida::MascaraTel(
                                        $inscricao->getCoPessoa()->getCoContato()->getNuTel2()
                                    );
                            } else if ($inscricao->getNuTelResponsavel()) {
                                $contato = $contato . ' / ' . Valida::MascaraTel(
                                        $inscricao->getNuTelResponsavel()
                                    );
                            }

                            $grid->setColunas(strtoupper($inscricao->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas(FuncoesSistema::TamanhoCamisa($inscricao->getNuCamisa()));
                            $grid->setColunas($contato);
                            $grid->setColunas($inscricao->getDsPastoral());
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($inscricao->getDsRetiro()));
                            $grid->criaLinha(
                                $inscricao->getCoInscricao(),
                                ($inscricao->getStStatus() == StatusAcessoEnum::DESISTENTE)
                                    ? true : null
                            );
                        endforeach;
                        $grid->finalizaGrid();
                        ?>
                        <div class="col-md-3">
                            <h2>
                                <small>Total de camisas</small>
                            </h2>
                            <?php
                            $grid2 = new Grid();
                            $arrColunas2 = array('Tamanho', 'Total');
                            $grid2->setColunasIndeces($arrColunas2);
                            $grid2->criaGrid('camisa', false, false);

                            foreach ($camisa as $tamanho => $total):
                                $grid2->setColunas(FuncoesSistema::TamanhoCamisa($tamanho), 3);
                                $grid2->setColunas($total);
                                $grid2->criaLinha($tamanho);
                            endforeach;
                            $grid2->finalizaGrid();
                            ?>
                        </div>
                        <div class="col-md-3">
                            <h2>
                                <small>Total em Idade</small>
                            </h2>
                            <?php
                            $grid3 = new Grid();
                            $arrColunas3 = array('Idade', 'Quantidade');
                            $grid2->setColunasIndeces($arrColunas3);
                            $grid2->criaGrid('idade', false, false);

                            foreach ($idades as $idade => $total):
                                $grid2->setColunas('<b>' . $idade . '</b>', 3);
                                $grid2->setColunas($total);
                                $grid2->criaLinha($total);
                            endforeach;
                            $grid2->finalizaGrid();
                            ?>
                        </div>
                    </div>
                    <!--  TABELA DE CONTAGEM DAS CAMISAS -->
                </div>
                <!-- end: DYNAMIC TABLE PANEL -->
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
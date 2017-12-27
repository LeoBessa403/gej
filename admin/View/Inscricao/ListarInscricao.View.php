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
                        <small>Listar Inscrições</small>
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
                        Modal::load();
                        Modal::deletaRegistro("Inscricao");
                        Modal::confirmacao("confirma_Inscricao");

                        $arrColunas = array('Nome', 'Telefone', 'CPF / RG','Inscrição', 'Nascimento', 'Servo', 'Membro', 'Pagamento', 'Ações');
                        $grid = new Grid();
                        $grid->setColunasIndeces($arrColunas);
                        $grid->criaGrid();
                        $documento = '';
                        $acao = '';

                        /** @var InscricaoEntidade $res */
                        foreach ($result as $res):
                            if ($res->getCoPessoa()->getNuCpf()) {
                                $documento = Valida::MascaraCpf($res->getCoPessoa()->getNuCpf());
                            } elseif ($res->getCoPessoa()->getNuRG()) {
                                $documento = $res->getCoPessoa()->getNuRG();
                            }
                            if(Valida::ValPerfil('DetalharInscricao')){
                                $acao = '<a href="' . PASTAADMIN . 'Inscricao/DetalharInscricao/'
                                    . Valida::GeraParametro("insc/" . $res->getCoInscricao()) . '" class="btn btn-primary tooltips" 
                                data-original-title="Visualizar Registro" data-placement="top">
                                <i class="fa fa-clipboard"></i>
                                </a>
                                 <a href="' . PASTAADMIN . 'Inscricao/DetalharPagamento/' . Valida::GeraParametro("insc/" . $res->getCoInscricao()) . '" class="btn btn-dark-grey tooltips" 
                                   data-original-title="Detalhes do Pagamento" data-placement="top">
                                    <i class="fa fa-indent"></i>
                                </a>';
                            }
                            $grid->setColunas(strtoupper($res->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas(Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel1()));
                            $grid->setColunas($documento);
                            $grid->setColunas(Valida::DataShow($res->getDtCadastro()));
                            $grid->setColunas(Valida::DataShow($res->getCoPessoa()->getDtNascimento()));
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($res->getStEquipeTrabalho()));
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($res->getDsMembroAtivo()));
                            $grid->setColunas(FuncoesSistema::Pagamento($res->getCoPagamento()->getTpSituacao()));
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($res->getCoInscricao());
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
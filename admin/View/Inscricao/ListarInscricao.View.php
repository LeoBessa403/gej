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

                        /** @var InscricaoEntidade $inscricao */
                        foreach ($result as $inscricao):
                            if ($inscricao->getCoPessoa()->getNuCpf()) {
                                $documento = Valida::MascaraCpf($inscricao->getCoPessoa()->getNuCpf());
                            } elseif ($inscricao->getCoPessoa()->getNuRG()) {
                                $documento = $inscricao->getCoPessoa()->getNuRG();
                            }
                            if(Valida::ValPerfil('DetalharInscricao')){
                                $acao = '<a href="' . PASTAADMIN . 'Inscricao/DetalharInscricao/'
                                    . Valida::GeraParametro("insc/" . $inscricao->getCoInscricao()) . '" class="btn btn-primary tooltips" 
                                data-original-title="Visualizar Registro" data-placement="top">
                                <i class="fa fa-clipboard"></i>
                                </a>
                                 <a href="' . PASTAADMIN . 'Inscricao/DetalharPagamento/' . Valida::GeraParametro("insc/" . $inscricao->getCoInscricao()) . '" class="btn btn-dark-grey tooltips" 
                                   data-original-title="Detalhes do Pagamento" data-placement="top">
                                    <i class="fa fa-indent"></i>
                                </a>';
                            }
                            $grid->setColunas(strtoupper($inscricao->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas(Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel1()));
                            $grid->setColunas($documento);
                            $grid->setColunas(Valida::DataShow($inscricao->getDtCadastro()));
                            $grid->setColunas(Valida::DataShow($inscricao->getCoPessoa()->getDtNascimento()));
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($inscricao->getStEquipeTrabalho()));
                            $grid->setColunas(FuncoesSistema::SituacaoSimNao($inscricao->getDsMembroAtivo()));
                            $grid->setColunas(FuncoesSistema::Pagamento($inscricao->getCoPagamento()->getTpSituacao()));
                            $grid->setColunas($acao, 2);
                            $grid->criaLinha($inscricao->getCoInscricao());
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
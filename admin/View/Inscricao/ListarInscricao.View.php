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
                        $grid = new Grid();
                        echo $grid->PesquisaAvancada('Pesquisar Inscrições');
                        ?>
                        <h2>
                            <small>Inscrições Cadastradas</small>
                        </h2>
                        <?php
                        Modal::load();
                        Modal::deletaRegistro(UrlAmigavel::$controller);
                        Modal::ModalConfirmaDesativacao("DesativarInscricao", "Deseja realmenta Desativar essa inscrição?", "", '', true);
                        Modal::ModalConfirmaAtivacao("AtivarInscricao", "Deseja realmenta Ativar essa inscrição?", "", '');
                        Modal::confirmacao("confirma_Inscricao");
                        $arrColunas = array('Nome', 'Inscrição', 'Idade', 'Endereço', 'Servo',
                            'Membro', 'Pagamento', 'Ações');
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
                            if (Valida::ValPerfil('DesativarInscricao')) {

                                if ($inscricao->getStStatus() == "D") {
                                    $acao = ' <a data-toggle="modal" role="button" class="btn btn-green tooltips acao" 
                                            id="' . $inscricao->getCoInscricao() . '" data-msg-restricao="MSG03"
                                           href="#AtivarInscricao" data-original-title="Ativar Inscrição" data-placement="top"
                                            data-acao="AtivarInscricao">
                                            <i class="fa fa-unlock-alt"></i>
                                        </a>';
                                } else {
                                    $acao = '<a href="' . PASTAADMIN . 'Inscricao/DetalharInscricao/'
                                        . Valida::GeraParametro(CO_INSCRICAO . "/" . $inscricao->getCoInscricao()) . '" 
                                        class="btn btn-primary tooltips" 
                                        data-original-title="Visualizar Registro" data-placement="top">
                                        <i class="fa fa-clipboard"></i>
                                        </a>
                                         <a href="' . PASTAADMIN . 'Inscricao/DetalharPagamento/' .
                                        Valida::GeraParametro(CO_INSCRICAO . "/" . $inscricao->getCoInscricao()) . '" 
                                         class="btn btn-dark-grey tooltips" 
                                           data-original-title="Detalhes do Pagamento" data-placement="top">
                                            <i class="fa fa-indent"></i>
                                        </a>
                                         <a data-toggle="modal" role="button" class="btn btn-danger tooltips acao" 
                                            id="' . $inscricao->getCoInscricao() . '" data-msg-restricao="MSG03"
                                           href="#DesativarInscricao" data-original-title="Desativar Inscrição" data-placement="top"
                                            data-acao="DesativarInscricao">
                                            <i class="fa fa-lock"></i>
                                        </a>';
                                }
                            }
                            $enderecoEnt = $inscricao->getCoPessoa()->getCoEndereco();
                            $endereco = $enderecoEnt->getDsEndereco() . ' - ' . $enderecoEnt->getNoCidade() . ' / ' .
                                $enderecoEnt->getSgUf();;
                            $grid->setColunas(strtoupper($inscricao->getCoPessoa()->getNoPessoa()));
                            $grid->setColunas(Valida::DataShow($inscricao->getDtCadastro(), 'd/m/Y H:i'));
                            $grid->setColunas(Valida::CalculaIdadeAtual($inscricao->getCoPessoa()->getDtNascimento()));
                            $grid->setColunas($endereco);
                            $grid->setColunas(Valida::SituacaoSimNao($inscricao->getStEquipeTrabalho()));
                            $grid->setColunas(Valida::SituacaoSimNao($inscricao->getDsMembroAtivo()));
                            $grid->setColunas(Valida::Pagamento($inscricao->getCoPagamento()->getTpSituacao()));
                            if (Valida::ValPerfil('DesativarInscricao')) {
                                $grid->setColunas($acao, 3);
                            } else {
                                $grid->setColunas('', 0);
                            }
                            $grid->criaLinha(
                                $inscricao->getCoInscricao(),
                                ($inscricao->getStStatus() == StatusAcessoEnum::DESISTENTE)
                                    ? true : null
                            );
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
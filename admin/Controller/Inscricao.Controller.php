<?php

class Inscricao extends AbstractController
{
    public $result;
    public $form;
    public $camisa;
    public $inscDuplicada;

    public function Index()
    {
    }

    public function DetalharInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);

        $this->inscDuplicada = false;
        $id = "DetalharInscricao";

        if (!empty($_POST[$id])):
            $retorno = $inscricaoService->salvarInscricao($_POST, $_FILES, $_POST[CO_INSCRICAO]);
            if ($retorno[SUCESSO]) {
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
            } else {
                $this->inscDuplicada = $retorno[MSG];
                $res = $inscricaoService->montaDadosInscricao($_POST);
                $this->form = InscricoesForm::Cadastrar($res, $id, 'Inscricao/ListarInscricao');
            }
        endif;

        $coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);

        if ($coInscricao):
            /** @var InscricaoEntidade $inscricao */
            $inscricao = $inscricaoService->PesquisaUmRegistro($coInscricao);
            $res = $inscricaoService->montaDadosInscricao($inscricao, true);
            $this->form = InscricoesForm::Cadastrar($res, $id, 'Inscricao/ListarInscricao');
        endif;
    }

    public function ListarInscricao()
    {
        $this->pegarInscricoes();
    }

    public function DetalhesInscricao()
    {
        $this->pegarInscricoes();
        $camisa[1] = 0;
        $camisa[2] = 0;
        $camisa[3] = 0;
        $camisa[4] = 0;
        $camisa[5] = 0;
        $camisa[6] = 0;
        $camisa[7] = 0;
        $camisa[8] = 0;
        $camisa[9] = 0;
        $camisa[10] = 0;
        /** @var InscricaoEntidade $inscricao */
        foreach ($this->result as $inscricao){
            $camisa[$inscricao->getNuCamisa()] = $camisa[$inscricao->getNuCamisa()] + 1;
        }
        $this->camisa = $camisa;
    }

    public function SobreVcInscricao()
    {
        $this->pegarInscricoes();
    }

    private function pegarInscricoes()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        $session = new Session();

        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $session->FinalizaSession(PESQUISA_AVANCADA);
        }
        if (!empty($_POST)) {
            $Condicoes = array(
                "pes." . NO_PESSOA => trim($_POST[NO_PESSOA]),
                "pes." . NU_CPF => Valida::RetiraMascara($_POST[NU_CPF]),
                "in#pag." . TP_SITUACAO => (!empty($_POST[TP_SITUACAO]))
                    ? implode("', '", $_POST[TP_SITUACAO]) : null,
                "insc." . DS_MEMBRO_ATIVO => $_POST[DS_MEMBRO_ATIVO][0],
                "insc." . CO_EVENTO => InscricaoEnum::EVENTO_ATUAL,
                "insc." . ST_EQUIPE_TRABALHO => $_POST[ST_EQUIPE_TRABALHO][0],
            );
            $this->result = $inscricaoService->PesquisaAvancada($Condicoes);
            $Condicoes[ST_STATUS] = StatusAcessoEnum::ATIVO;
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
        } else {
            $Condicoes[CO_EVENTO] = InscricaoEnum::EVENTO_ATUAL;
            $this->result = $inscricaoService->PesquisaAvancada($Condicoes);
        }
    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarListarInscricao()
    {
        $inscricoes = $this->pegarInscricoesExportar();
        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        /** @var InscricaoEntidade $res */
        foreach ($inscricoes as $res) {
            if ($res->getCoPessoa()->getNuCpf()) {
                $documento = Valida::MascaraCpf($res->getCoPessoa()->getNuCpf());
            } elseif ($res->getCoPessoa()->getNuRG()) {
                $documento = $res->getCoPessoa()->getNuRG();
            }
            $dados[$i][NO_PESSOA] = strtoupper($res->getCoPessoa()->getNoPessoa());
            $dados[$i][NU_TEL1] = Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel1()) .
                ' / ' . Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel2());
            $dados[$i][NU_CPF] = $documento;
            $dados[$i][DT_NASCIMENTO] = Valida::DataShow($res->getCoPessoa()->getDtNascimento());
            $dados[$i][ST_EQUIPE_TRABALHO] = FuncoesSistema::SituacaoSimNao($res->getStEquipeTrabalho());
            $dados[$i][DS_MEMBRO_ATIVO] = FuncoesSistema::SituacaoSimNao($res->getDsMembroAtivo());
            $dados[$i][TP_SITUACAO] = FuncoesSistema::Pagamento($res->getCoPagamento()->getTpSituacao());
            $i++;
        }
        $Colunas = array('Nome', 'Telefone', 'CPF / RG', 'Nascimento', 'Membro', 'Pagamento');
        $this->geraArquivo($formato, $Colunas, $dados);
    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarDetalhesInscricao()
    {
        $inscricoes = $this->pegarInscricoesExportar();
        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        /** @var InscricaoEntidade $inscricao */
        foreach ($inscricoes as $inscricao) {
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
            $dados[$i][NO_PESSOA] = strtoupper($inscricao->getCoPessoa()->getNoPessoa());
            $dados[$i][NU_CAMISA] = FuncoesSistema::TamanhoCamisa($inscricao->getNuCamisa());
            $dados[$i]['CONTATO'] = $contato;
            $dados[$i][DS_PASTORAL] = $inscricao->getDsPastoral();
            $dados[$i][DS_RETIRO] = FuncoesSistema::SituacaoSimNao($inscricao->getDsRetiro());
            $i++;
        }
        $Colunas = array('Nome', 'Contatos', 'Participa Pastoral', 'Particiopou Retiro');
        $this->geraArquivo($formato, $Colunas, $dados);
    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarSobreVcInscricao()
    {
        $inscricoes = $this->pegarInscricoesExportar();
        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        /** @var InscricaoEntidade $inscricao */
        foreach ($inscricoes as $inscricao) {
            $dados[$i][NO_PESSOA] = strtoupper($inscricao->getCoPessoa()->getNoPessoa());
            $dados[$i][DS_DESCRICAO] = $inscricao->getDsDescricao();
            $dados[$i][DS_MEDICACAO] = $inscricao->getDsMedicacao();
            $dados[$i][DS_ALIMENTACAO] = $inscricao->getDsAlimentacao();
            $i++;
        }
        $Colunas = array('Nome', 'Sobre', 'Medicação', 'Alimentação');
        $this->geraArquivo($formato, $Colunas, $dados);
    }

    private function pegarInscricoesExportar()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);

        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = $session->getSession(PESQUISA_AVANCADA);
            $Condicoes[CO_EVENTO] = InscricaoEnum::EVENTO_ATUAL;
            $result = $inscricaoService->PesquisaAvancada($Condicoes);
        } else {
            $Condicoes = [
                "insc." . ST_STATUS => StatusAcessoEnum::ATIVO,
            ];
            $Condicoes[CO_EVENTO] = InscricaoEnum::EVENTO_ATUAL;
            $result = $inscricaoService->PesquisaAvancada($Condicoes);
        }
        return $result;
    }

    private function geraArquivo($formato, $Colunas, $dados)
    {
        $exporta = new Exportacao($formato);
        $exporta->setPapelOrientacao("paisagem");
        $exporta->setColunas($Colunas);
        $exporta->setConteudo($dados);
        $exporta->GeraArquivo();
    }

    public function DetalhesInscricaoPesquisaAvancada()
    {
        echo InscricaoForm::Pesquisar();
    }

    public function ListarInscricaoPesquisaAvancada()
    {
        echo InscricaoForm::Pesquisar();
    }

    public function SobreVcInscricaoPesquisaAvancada()
    {
        echo InscricaoForm::Pesquisar();
    }

    public function DetalharPagamento()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);

        $id = "DetalharInscricao";

        if (!empty($_POST[$id])) {
            /** @var PDO $PDO */
            $PDO = $parcelamentoService->getPDO();
            /** @var InscricaoEntidade $inscricaoEdicao */
            $inscricaoEdicao = $inscricaoService->PesquisaUmRegistro($_POST[CO_INSCRICAO]);
            /** @var PagamentoEntidade $pagamento */
            $pagamento = $inscricaoEdicao->getCoPagamento();
            $numeroParcelas = $_POST[NU_PARCELAS][0];
            $pag[NU_VALOR_DESCONTO] = Valida::FormataMoedaBanco($_POST[NU_VALOR_DESCONTO]);

            $PDO->beginTransaction();
            if ($pagamento->getTpSituacao() != StatusPagamentoEnum::CONCLUIDO) {
                $parcelamentoService->fazerParcelamento($numeroParcelas, $pagamento, $pag[NU_VALOR_DESCONTO]);
                $pag[NU_PARCELAS] = $numeroParcelas;
            }
            $retorno = $pagamentoService->Salva($pag, $pagamento->getCoPagamento());
            if ($retorno) {
                $PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível Salvar o Parcelamento';
                $PDO->rollBack();
            }
        }

        $coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);
        if (!$coInscricao) {
            $coInscricao = $_POST[CO_INSCRICAO];
        }

        /** @var InscricaoEntidade $inscricao */
        $inscricao = $inscricaoService->PesquisaUmRegistro($coInscricao);
        /** @var PagamentoEntidade $pagamentoInsc */
        $this->pagamentoInsc = $pagamentoService->PesquisaUmRegistro(
            $inscricao->getCoPagamento()->getCoPagamento()
        );

        $res[CO_INSCRICAO] = $inscricao->getCoInscricao();
        $res[NU_PARCELAS] = $inscricao->getCoPagamento()->getNuParcelas();
        $res[NU_VALOR_DESCONTO] = Valida::FormataMoeda($inscricao->getCoPagamento()->getNuValorDesconto());

        $this->form = InscricaoForm::DetalharPagametno($res);

        $this->inscricao = $inscricao;

    }

    public function EditarParcela()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);
        /** @var AdministrativoService $administrativoService */
        $administrativoService = $this->getService(ADMINISTRATIVO_SERVICE);
        /** @var PDO $PDO */
        $PDO = $parcelamentoService->getPDO();

        $id = "EditarParcelamento";

        if (!empty($_POST[$id])):
            $PDO->beginTransaction();
            $dados = $_POST;
            $coParcela = $dados[CO_PARCELAMENTO];

            $parcela[NU_VALOR_PARCELA_PAGO] = Valida::FormataMoedaBanco($dados[NU_VALOR_PARCELA_PAGO]);
            $parcela[DT_VENCIMENTO_PAGO] = ($dados[DT_VENCIMENTO_PAGO])
                ? Valida::DataDBDate($dados[DT_VENCIMENTO_PAGO])
                : null;
            $parcela[CO_TIPO_PAGAMENTO] = $dados[CO_TIPO_PAGAMENTO][0];
            $parcela[DS_OBSERVACAO] = Valida::LimpaVariavel($dados[DS_OBSERVACAO]);

            if ($parcela[NU_VALOR_PARCELA_PAGO] > InscricaoEnum::VALOR_CARTAO) {
                $session = new Session();
                $session->setSession(MENSAGEM, Mensagens::MSG_VALOR_PAGA_ACIMA);
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
            } else {
                $parcelamentoService->Salva($parcela, $coParcela);

                /** @var ParcelamentoEntidade $parcelas */
                $parcelas = $parcelamentoService->PesquisaUmRegistro($coParcela);
                /** @var PagamentoEntidade $pagamento */
                $pagamento = $pagamentoService->PesquisaUmRegistro($parcelas->getCoPagamento()->getCoPagamento());
                $total = 0;
                /** @var ParcelamentoEntidade $parcel */
                foreach ($pagamento->getCoParcelamento() as $parcel) {
                    $total = $total + $parcel->getNuValorParcelaPago();
                }
                $pag[NU_VALOR_PAGO] = $total;
                $total = $total + $pagamento->getNuValorDesconto();

                if ($total >= InscricaoEnum::VALOR_DINHEIRO) {
                    $pag[TP_SITUACAO] = StatusPagamentoEnum::CONCLUIDO;
                } elseif ($total > 0) {
                    $pag[TP_SITUACAO] = StatusPagamentoEnum::INICIADA;
                }

                if ($pagamento->getTpSituacao() != StatusPagamentoEnum::NAO_INICIADA) {
                    // Atualiza o fluxo de Caixa retirando o ja realizado
                    $administrativoService->atualizaFluxoCaixa(
                        $pagamento->getNuValorPago(),
                        FluxoCaixaEnum::FLUXO_SAIDA
                    );
                }

                // Atualiza o fluxo de Caixa
                $administrativoService->atualizaFluxoCaixa(
                    $parcela[NU_VALOR_PARCELA_PAGO],
                    FluxoCaixaEnum::FLUXO_ENTRADA
                );
                $retorno = $pagamentoService->Salva($pag, $parcelas->getCoPagamento()->getCoPagamento());
                if ($retorno) {
                    $PDO->commit();
                } else {
                    $retorno[MSG] = 'Não foi possível Salvar o Parcelamento';
                    $PDO->rollBack();
                }
                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
            }
        endif;

        $parc = UrlAmigavel::PegaParametro("parc");
        $res = array();
        if ($parc):
            /** @var ParcelamentoEntidade $parcela */
            $parcela = $parcelamentoService->PesquisaUmRegistro($parc);

            $res[CO_PARCELAMENTO] = $parcela->getCoParcelamento();
            $res[NU_VALOR_PARCELA] = Valida::FormataMoeda($parcela->getNuValorParcela());
            $res[NU_VALOR_PARCELA_PAGO] = Valida::FormataMoeda($parcela->getNuValorParcelaPago());
            $res[DT_VENCIMENTO_PAGO] = ($parcela->getDtVencimentoPago())
                ? Valida::DataShow($parcela->getDtVencimentoPago())
                : null;
            $res[DS_OBSERVACAO] = $parcela->getDsObservacao();
            $res[SG_TIPO_PAGAMENTO] = $parcela->getCoTipoPagamento()->getSgTipoPagamento();
            $res[CO_TIPO_PAGAMENTO] = $parcela->getCoTipoPagamento()->getCoTipoPagamento();

            $this->form = InscricaoForm::EditarParcelamento($res);
        endif;
    }

    public function GraficosInscricao()
    {
        $indexControl = new Index();
        $indexControl->Index();
        $dados = $indexControl->dados;

        // GRAFICO PIZZA
        $grafico = new Grafico(Grafico::PIZZA, "Arrecadação", "div_pizza");
        $grafico->SetDados(array(
            "['Categorias','Procedimentos/Mês']",
            "['Total a Arrecadar'," . $dados['TotalAArrecadarDados'] . "]",
            "['Total Arrecadado'," . $dados['TotalArrecadadoDados'] . "]",
            "['Total Desconto'," . $dados['TotalDescontosDados'] . "]",
        ));
        $grafico->GeraGrafico();

        // GRAFICO COLUNAS
        $grafico2 = new Grafico(Grafico::COLUNA, "Total de Inscrições", "div_coluna");
        $grafico2->SetDados(array(
            "['Inscrições','Realizadas','Garantidas']",
            "['Inscrições'," . $dados['TotalInscricoes'] . " , " . $dados['TotalParcial'] . " ]"
        ));
        $grafico2->GeraGrafico();
    }

    public function DesativarInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);

        $coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);
        $retorno = $inscricaoService->desativarInscricao($coInscricao);
        if ($retorno[SUCESSO]) {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
        }
    }

    public function AtivarInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);

        $coInscricao = UrlAmigavel::PegaParametro(CO_INSCRICAO);
        $retorno = $inscricaoService->ativarInscricao($coInscricao);
        if ($retorno[SUCESSO]) {
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
        }
    }

}

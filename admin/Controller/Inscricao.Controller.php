<?php

class Inscricao extends AbstractController
{
    public $result;
    public $form;
    public $inscDuplicada;

    public function Index()
    {
    }

    public function DetalharInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);

        $this->inscDuplicada = false;
        $id = "DetalharInscricao";

        if (!empty($_POST[$id])):
            $retorno = $inscricaoService->salvarInscricao($_POST, $_FILES, $_POST[CO_INSCRICAO]);
            if ($retorno[SUCESSO]) {
                /** @var InscricaoEntidade $inscricaoEdicao */
                $inscricaoEdicao = $inscricaoService->PesquisaUmRegistro($_POST[CO_INSCRICAO]);
                /** @var PagamentoEntidade $pagamento */
                $pagamento = $inscricaoEdicao->getCoPagamento();
                $numeroParcelas = $_POST[NU_PARCELAS][0];

                if ($pagamento->getNuParcelas() != $numeroParcelas) {
                    $pag[NU_PARCELAS] = $numeroParcelas;
                    $pagamentoService->Salva($pag, $pagamento->getCoPagamento());

                    $parcelamentoService->fazerParcelamento($numeroParcelas, $pagamento);
                }

                Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
            } else {
                $this->inscDuplicada = $retorno[MSG];
            }
        endif;

        $coInscricao = UrlAmigavel::PegaParametro("insc");

        $res = array();
        if ($coInscricao):
            /** @var InscricaoEntidade $inscricao */
            $inscricao = $inscricaoService->PesquisaUmRegistro($coInscricao);

            $res[DS_MEMBRO_ATIVO] = ($inscricao->getDsMembroAtivo() == 'S')
                ? 'checked' : '';
            $res[DS_RETIRO] = ($inscricao->getDsRetiro() == 'S')
                ? 'checked' : '';
            $res[ST_EQUIPE_TRABALHO] = ($inscricao->getStEquipeTrabalho() == 'S')
                ? 'checked' : '';
            $res[CO_INSCRICAO] = $inscricao->getCoInscricao();
            $res[NO_PESSOA] = $inscricao->getCoPessoa()->getNoPessoa();
            $res[NU_TEL1] = Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel1());
            $res[NU_TEL2] = Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel2());
            $res[NU_CPF] = Valida::MascaraCpf($inscricao->getCoPessoa()->getNuCpf());
            $res[NU_RG] = $inscricao->getCoPessoa()->getNuRg();
            $res[DT_NASCIMENTO] = Valida::DataShow($inscricao->getCoPessoa()->getDtNascimento());
            $res[ST_SEXO] = $inscricao->getCoPessoa()->getStSexo();
            $res[NU_PARCELAS] = $inscricao->getCoPagamento()->getNuParcelas();
            $res[NU_CAMISA] = $inscricao->getNuCamisa();

            $res[DS_EMAIL] = $inscricao->getCoPessoa()->getCoContato()->getDsEmail();
            $res[NO_RESPONSAVEL] = $inscricao->getNoResponsavel();
            $res[NU_TEL_RESPONSAVEL] = Valida::MascaraTel($inscricao->getNuTelResponsavel());
            $res[DS_PASTORAL] = $inscricao->getDsPastoral();
            $res["ds_pastoral_ativo"] = ($inscricao->getDsPastoral()) ? 'checked' : '';

            $res[DS_ENDERECO] = $inscricao->getCoPessoa()->getCoEndereco()->getDsEndereco();
            $res[DS_COMPLEMENTO] = $inscricao->getCoPessoa()->getCoEndereco()->getDsComplemento();
            $res[DS_BAIRRO] = $inscricao->getCoPessoa()->getCoEndereco()->getDsBairro();
            $res[NO_CIDADE] = $inscricao->getCoPessoa()->getCoEndereco()->getNoCidade();
            $res[NU_CEP] = $inscricao->getCoPessoa()->getCoEndereco()->getNuCep();
            $res[SG_UF] = $inscricao->getCoPessoa()->getCoEndereco()->getSgUf();
            $res[DS_DESCRICAO] = $inscricao->getDsDescricao();
            $res[DS_ALIMENTACAO] = $inscricao->getDsAlimentacao();
            $res[DS_MEDICACAO] = $inscricao->getDsMedicacao();
            if ($inscricao->getCoImagem()->getDsCaminho()):
                $res[DS_CAMINHO] = "inscricoes/" . $inscricao->getCoImagem()->getDsCaminho();
            endif;
            $this->form = MembroWebForm::Cadastrar($inscricao->getCoInscricao(), $res, $id);
        endif;

    }

    public function ListarInscricao()
    {
        $this->pegarInscricoes();
    }

    public function DetalhesInscricao()
    {
        $this->pegarInscricoes();
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
                "pag." . TP_SITUACAO => $_POST[TP_SITUACAO][0],
                "insc." . DS_MEMBRO_ATIVO => $_POST[DS_MEMBRO_ATIVO][0],
                "insc." . ST_EQUIPE_TRABALHO => $_POST[ST_EQUIPE_TRABALHO][0],
            );
            $this->result = $inscricaoService->PesquisaAvancada($Condicoes);
            $Condicoes[ST_STATUS] = StatusAcessoEnum::ATIVO;
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
        } else {
            $Condicoes = [];
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
        $Colunas = array('Nome', 'Telefone', 'CPF / RG', 'Nascimento', 'Servo', 'Membro', 'Pagamento');
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
        $Colunas = array('Nome', 'Camisa', 'Contatos', 'Participa Pastoral', 'Particiopou Retiro');
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
            $result = $inscricaoService->PesquisaAvancada($Condicoes);
        } else {
            $Condicoes = [
                "insc." . ST_STATUS => StatusAcessoEnum::ATIVO,
            ];
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

    public static function FormasDePagamento()
    {
        /** @var TipoPagamentoService $tipoPagamentoService */
        $tipoPagamentoService = new TipoPagamentoService();

        $tipos = $tipoPagamentoService->PesquisaTodos();
        /** @var TipoPagamentoEntidade $forma */
        foreach ($tipos as $forma) {
            $pagamentos[$forma->getCoTipoPagamento()] = $forma->getDsTipoPagamento();
        }
        return $pagamentos;
    }

    public static function SituacaoPagamento()
    {
        $SituacaoPagamento[""] = "Situação do Pagamento";
        $SituacaoPagamento["N"] = StatusPagamentoEnum::getDescricaoValor(StatusPagamentoEnum::NAO_INICIADA);
        $SituacaoPagamento["I"] = StatusPagamentoEnum::getDescricaoValor(StatusPagamentoEnum::INICIADA);
        $SituacaoPagamento["C"] = StatusPagamentoEnum::getDescricaoValor(StatusPagamentoEnum::CONCLUIDO);
        return $SituacaoPagamento;
    }

    public function DetalharPagamento()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);

        $coInscricao = UrlAmigavel::PegaParametro("insc");

        /** @var InscricaoEntidade $inscricao */
        $this->inscricao = $inscricaoService->PesquisaUmRegistro($coInscricao);
        /** @var PagamentoEntidade $pagamentoInsc */
        $this->pagamentoInsc = $pagamentoService->PesquisaUmRegistro(
            $this->inscricao->getCoPagamento()->getCoPagamento()
        );
    }

    public function EditarParcela()
    {
        /** @var PagamentoService $pagamentoService */
        $pagamentoService = $this->getService(PAGAMENTO_SERVICE);
        /** @var ParcelamentoService $parcelamentoService */
        $parcelamentoService = $this->getService(PARCELAMENTO_SERVICE);

        $id = "EditarParcelamento";

        if (!empty($_POST[$id])):
            $dados = $_POST;
            $coParcela = $dados[CO_PARCELAMENTO];

            $parcela[NU_VALOR_PARCELA_PAGO] = Valida::FormataMoedaBanco($dados[NU_VALOR_PARCELA_PAGO]);
            $parcela[DT_VENCIMENTO_PAGO] = ($dados[DT_VENCIMENTO_PAGO])
                ? Valida::DataDBDate($dados[DT_VENCIMENTO_PAGO])
                : null;
            $parcela[CO_TIPO_PAGAMENTO] = $dados[DS_TIPO_PAGAMENTO][0];
            $parcela[DS_OBSERVACAO] = Valida::LimpaVariavel($dados[DS_OBSERVACAO]);

            $parcelamentoService->Salva($parcela, $coParcela);

            /** @var ParcelamentoEntidade $parcelas */
            $parcelas = $parcelamentoService->PesquisaUmRegistro($coParcela);
            /** @var PagamentoEntidade $pagamento */
            $pagamento = $pagamentoService->PesquisaUmRegistro($parcelas->getCoPagamento()->getCoPagamento());
            /** @var ParcelamentoEntidade $parcela */
            $total = 0;
            foreach ($pagamento->getCoParcelamento() as $parcela) {
                $total = $total + $parcela->getNuValorParcelaPago();
            }
            if ($total == $pagamento->getNuTotal()) {
                $pag[TP_SITUACAO] = "C";
            } elseif ($total > 0) {
                $pag[TP_SITUACAO] = "I";
            }
            $pagamentoService->Salva($pag, $parcelas->getCoPagamento()->getCoPagamento());
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
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

            $this->form = InscricaoForm::EditarParcelamento($res);
        endif;
    }

    public function montaComboTodosTipoPagamento()
    {
        /** @var TipoPagamentoService $tipoPagamentoService */
        $tipoPagamentoService = $this->getService(TIPO_PAGAMENTO_SERVICE);

        $tpPagamento = $tipoPagamentoService->PesquisaTodos();
        $todosTp = array();
        /** @var TipoPagamentoEntidade $tp */
        foreach ($tpPagamento as $tp) :
            $todosTp[$tp->getCoTipoPagamento()] = $tp->getDsTipoPagamento();
        endforeach;
        return $todosTp;
    }

}

?>
   
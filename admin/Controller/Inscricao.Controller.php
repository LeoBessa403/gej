<?php

class Inscricao extends AbstractController
{
    public $result;
    public $form;

    public function Index()
    {
    }

    public function DetalharInscricao()
    {
        $id = "DetalharInscricao";

        if (!empty($_POST[$id])):
            debug($_POST);
            /** @var InscricaoService $inscricaoService */
            $inscricaoService = $this->getService(INSCRICAO_SERVICE);
            $inscricaoService->salvarInscricao($_POST, $_FILES);
          

            $inscricaoService->Salva($insc, $coInscricao);

            $pagamento[NU_PARCELAS] = $dados[NU_PARCELAS][0];
            $pagamentoService->Salva($pagamento, $pagamentoInsc->getCoPagamento());

            /** @var ParcelamentoEntidade $parcela */
            foreach ($pagamentoInsc->getCoParcelamento() as $parcela) {
                $parcelamentoService->Deleta($parcela->getCoParcelamento());
            }

            for ($i = 0; $i < $pagamento[NU_PARCELAS]; $i++) {
                $novaParcela = array(
                    NU_PARCELA => $i + 1,
                    NU_VALOR_PARCELA => (150.00 / $pagamento[NU_PARCELAS]),
                    DT_VENCIMENTO => Valida::DataAtualBanco('Y-m-d'),
                    CO_TIPO_PAGAMENTO => 1,
                    CO_PAGAMENTO => $pagamentoInsc->getCoPagamento(),
                );
                $parcelamentoService->Salva($novaParcela);
            }
            Redireciona(UrlAmigavel::$modulo . '/' . UrlAmigavel::$controller . '/ListarInscricao/');
        endif;

        $coInscricao = UrlAmigavel::PegaParametro("insc");

        $res = array();
        if ($coInscricao):
            /** @var InscricaoService $inscricaoService */
            $inscricaoService = $this->getService(INSCRICAO_SERVICE);
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
            $this->form = MembroWebForm::Cadastrar($inscricao->getCoInscricao(), $res, $id);
        endif;

    }

    public function ListarInscricao()
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
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
            $this->result = $inscricaoService->PesquisaAvancada($Condicoes);
        } else {
            $this->result = $inscricaoService->PesquisaTodos();
        }
    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarListarInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);

        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = $session->getSession(PESQUISA_AVANCADA);
            $result =  $inscricaoService->PesquisaAvancada($Condicoes);
        } else {
            $result = $inscricaoService->PesquisaTodos();
        }
        $formato = UrlAmigavel::PegaParametro("formato");
        $i = 0;
        /** @var InscricaoEntidade $res */
        foreach ($result as $res) {
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
        $exporta = new Exportacao($formato);
        $exporta->setPapelOrientacao("paisagem");
        $exporta->setColunas($Colunas);
        $exporta->setConteudo($dados);
        $exporta->GeraArquivo();
    }

    public function ListarInscricaoPesquisaAvancada()
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
        $coInscricao = UrlAmigavel::PegaParametro("insc");
        $InscricaoModel = new InscricaoModel();
        $PagamentoModel = new PagamentoModel();
        /** @var InscricaoEntidade $inscricao */
        $this->inscricao = $InscricaoModel->PesquisaUmRegistro($coInscricao);
        /** @var PagamentoEntidade $pagamentoInsc */
        $this->pagamentoInsc = $PagamentoModel->PesquisaUmRegistro($this->inscricao->getCoPagamento()->getCoPagamento());
    }

    public function EditarParcela()
    {
        $id = "EditarParcelamento";

        if (!empty($_POST[$id])):

            $dados = $_POST;
            $PagamentoModel = new PagamentoModel();
            $ParcelamentoModel = new ParcelamentoModel();
            $coParcela = $dados[CO_PARCELAMENTO];

            $parcela[NU_VALOR_PARCELA_PAGO] = Valida::FormataMoedaBanco($dados[NU_VALOR_PARCELA_PAGO]);
            $parcela[DT_VENCIMENTO_PAGO] = ($dados[DT_VENCIMENTO_PAGO])
                ? Valida::DataDBDate($dados[DT_VENCIMENTO_PAGO])
                : null;
            $parcela[CO_TIPO_PAGAMENTO] = $dados[DS_TIPO_PAGAMENTO][0];
            $parcela[DS_OBSERVACAO] = Valida::LimpaVariavel($dados[DS_OBSERVACAO]);

            $ParcelamentoModel->Salva($parcela, $coParcela);

            /** @var ParcelamentoEntidade $parcelas */
            $parcelas = $ParcelamentoModel->PesquisaUmRegistro($coParcela);
            /** @var PagamentoEntidade $pagamentos */
            $pagamentos = $PagamentoModel->PesquisaUmRegistro($parcelas->getCoPagamento()->getCoPagamento());
            /** @var ParcelamentoEntidade $parcela */
            $total = 0;
            foreach ($pagamentos->getCoParcelamento() as $parcela){
                $total = $total + $parcela->getNuValorParcelaPago();
            }
            if($total == 160){
                $pag[TP_SITUACAO] = "C";
            }elseif($total > 0){
                $pag[TP_SITUACAO] = "I";
            }
            $PagamentoModel->Salva($pag, $parcelas->getCoPagamento()->getCoPagamento());
            unset($_POST);
            $this->ListarInscricao();
            UrlAmigavel::$action = "ListarInscricao";
        endif;

        $parc = UrlAmigavel::PegaParametro("parc");
        $res = array();
        if ($parc):
            $ParcelaModel = new ParcelamentoModel();
            /** @var ParcelamentoEntidade $parcela */
            $parcela = $ParcelaModel->PesquisaUmRegistro($parc);

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
        $TipoPagamentoModel = new TipoPagamentoModel();
        $tpPagamento = $TipoPagamentoModel->PesquisaTodos();
        $todosTp = array();
        /** @var TipoPagamentoEntidade $tp */
        foreach ($tpPagamento as $tp) :
            $todosTp[$tp->getCoTipoPagamento()] = $tp->getDsTipoPagamento();
        endforeach;
        return $todosTp;
    }

}

?>
   
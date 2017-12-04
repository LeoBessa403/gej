<?php

class Inscricao extends AbstractController
{
    public $result;

    public function Index()
    {
    }

    public function DetalharInscricao()
    {
        $id = "DetalharInscricao";

        if (!empty($_POST[$id])):

            $dados = $_POST;
            $EnderecoModel = new EnderecoModel();
            $ContatoModel = new ContatoModel();
            $PessoaModel = new PessoaModel();
            $InscricaoModel = new InscricaoModel();
            $PagamentoModel = new PagamentoModel();
            $ParcelamentoModel = new ParcelamentoModel();
            $coInscricao = $dados[CO_INSCRICAO];
            /** @var InscricaoEntidade $inscricao */
            $inscricao = $InscricaoModel->PesquisaUmRegistro($coInscricao);
            /** @var PagamentoEntidade $pagamentoInsc */
            $pagamentoInsc = $PagamentoModel->PesquisaUmRegistro($inscricao->getCoPagamento()->getCoPagamento());

            $endereco[DS_ENDERECO] = $dados[DS_ENDERECO];
            $endereco[DS_COMPLEMENTO] = $dados[DS_COMPLEMENTO];
            $endereco[DS_BAIRRO] = $dados[DS_BAIRRO];
            $endereco[NO_CIDADE] = $dados[NO_CIDADE];
            $endereco[NU_CEP] = Valida::RetiraMascara($dados[NU_CEP]);
            $endereco[SG_UF] = $dados[SG_UF][0];

            $contato[DS_EMAIL] = trim($dados[DS_EMAIL]);
            $contato[NU_TEL1] = Valida::RetiraMascara($dados[NU_TEL1]);
            $contato[NU_TEL2] = Valida::RetiraMascara($dados[NU_TEL2]);

            $pessoa[NO_PESSOA] = strtoupper(trim($dados[NO_PESSOA]));
            $pessoa[NU_CPF] = Valida::RetiraMascara($dados[NU_CPF]);
            $pessoa[NU_RG] = Valida::RetiraMascara($dados[NU_RG]);
            $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
            $pessoa[ST_SEXO] = $dados[ST_SEXO][0];
            $pessoa[DT_CADASTRO] = Valida::DataAtualBanco();

            $EnderecoModel->Salva($endereco, $inscricao->getCoPessoa()->getCoEndereco()->getCoEndereco());
            $ContatoModel->Salva($contato, $inscricao->getCoPessoa()->getCoContato()->getCoContato());

            $PessoaModel->Salva($pessoa, $inscricao->getCoPessoa()->getCoPessoa());

            $insc[DS_PASTORAL] = $dados[DS_PASTORAL];
            $insc[DS_MEMBRO_ATIVO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[DS_MEMBRO_ATIVO])) ? $dados[DS_MEMBRO_ATIVO] : null
            );
            $insc[ST_EQUIPE_TRABALHO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[ST_EQUIPE_TRABALHO])) ? $dados[ST_EQUIPE_TRABALHO] : null
            );
            $insc[NU_CAMISA] = $dados[NU_CAMISA][0];
            $insc[NO_RESPONSAVEL] = strtoupper(trim($dados[NO_RESPONSAVEL]));
            $insc[NU_TEL_RESPONSAVEL] = Valida::RetiraMascara($dados[NU_TEL_RESPONSAVEL]);

            $InscricaoModel->Salva($insc, $coInscricao);

            $pagamento[NU_PARCELAS] = $dados[NU_PARCELAS][0];
            $PagamentoModel->Salva($pagamento, $pagamentoInsc->getCoPagamento());

            /** @var ParcelamentoEntidade $parcela */
            foreach ($pagamentoInsc->getCoParcelamento() as $parcela) {
                $ParcelamentoModel->Deleta($parcela->getCoParcelamento());
            }

            for ($i = 0; $i < $pagamento[NU_PARCELAS]; $i++) {
                $novaParcela = array(
                    NU_PARCELA => $i + 1,
                    NU_VALOR_PARCELA => (150.00 / $pagamento[NU_PARCELAS]),
                    DT_VENCIMENTO => Valida::DataAtualBanco('Y-m-d'),
                    CO_TIPO_PAGAMENTO => 1,
                    CO_PAGAMENTO => $pagamentoInsc->getCoPagamento(),
                );
                $ParcelamentoModel->Salva($novaParcela);
            }
            unset($_POST);
            $this->ListarInscricao();
            UrlAmigavel::$action = "ListarInscricao";
        endif;

        $coInscricao = UrlAmigavel::PegaParametro("insc");
        $res = array();
        if ($coInscricao):
            $InscricaoModel = new InscricaoModel();
            /** @var InscricaoEntidade $inscricao */
            $inscricao = $InscricaoModel->PesquisaUmQuando([CO_INSCRICAO => $coInscricao]);

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
            $this->form = MembroWebForm::Cadastrar($inscricao->getCoInscricao(), $res, $id);
        endif;

    }

    public function ListarInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        $inscricaoModel = new InscricaoModel();
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
            $this->result = $inscricaoModel->PesquisaAvancada($Condicoes);
        } else {
            $this->result = $inscricaoService->PesquisaTodos();
        }
    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarListarInscricao()
    {
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        $inscricaoModel = new InscricaoModel();
        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = array(
                "pes." . NO_PESSOA => trim($_POST[NO_PESSOA]),
                "pes." . NU_CPF => Valida::RetiraMascara($_POST[NU_CPF]),
                "pag." . TP_SITUACAO => $_POST[TP_SITUACAO][0],
                "insc." . DS_MEMBRO_ATIVO => $_POST[DS_MEMBRO_ATIVO][0],
                "insc." . ST_EQUIPE_TRABALHO => $_POST[ST_EQUIPE_TRABALHO][0],
            );
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
            $result = $inscricaoModel->PesquisaAvancada($Condicoes);
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

//    public function ListarInscricaoPesquisaAvancada()
//    {
//        echo InscricaoForm::Pesquisar();
//    }

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
        $SituacaoPagamento["N"] = "Não Pago";
        $SituacaoPagamento["I"] = "Parcial";
        $SituacaoPagamento["C"] = "Concluído";
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
   
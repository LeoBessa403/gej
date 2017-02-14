<?php

class Inscricao
{

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
            $coInscricao = $dados[Constantes::CO_INSCRICAO];
            /** @var InscricaoEntidade $inscricao */
            $inscricao = $InscricaoModel->PesquisaUmRegistro($coInscricao);
            /** @var PagamentoEntidade $pagamentoInsc */
            $pagamentoInsc = $PagamentoModel->PesquisaUmRegistro($inscricao->getCoPagamento()->getCoPagamento());

            $endereco[Constantes::DS_ENDERECO] = $dados[Constantes::DS_ENDERECO];
            $endereco[Constantes::DS_COMPLEMENTO] = $dados[Constantes::DS_COMPLEMENTO];
            $endereco[Constantes::DS_BAIRRO] = $dados[Constantes::DS_BAIRRO];
            $endereco[Constantes::NO_CIDADE] = $dados[Constantes::NO_CIDADE];
            $endereco[Constantes::NU_CEP] = Valida::RetiraMascara($dados[Constantes::NU_CEP]);
            $endereco[Constantes::SG_UF] = $dados[Constantes::SG_UF][0];

            $contato[Constantes::DS_EMAIL] = trim($dados[Constantes::DS_EMAIL]);
            $contato[Constantes::NU_TEL1] = Valida::RetiraMascara($dados[Constantes::NU_TEL1]);
            $contato[Constantes::NU_TEL2] = Valida::RetiraMascara($dados[Constantes::NU_TEL2]);

            $pessoa[Constantes::NO_PESSOA] = strtoupper(trim($dados[Constantes::NO_PESSOA]));
            $pessoa[Constantes::NU_CPF] = Valida::RetiraMascara($dados[Constantes::NU_CPF]);
            $pessoa[Constantes::NU_RG] = Valida::RetiraMascara($dados[Constantes::NU_RG]);
            $pessoa[Constantes::DT_NASCIMENTO] = Valida::DataDBDate($dados[Constantes::DT_NASCIMENTO]);
            $pessoa[Constantes::ST_SEXO] = $dados[Constantes::ST_SEXO][0];
            $pessoa[Constantes::DT_CADASTRO] = Valida::DataAtualBanco();

            $EnderecoModel->Salva($endereco, $inscricao->getCoPessoa()->getCoEndereco()->getCoEndereco());
            $ContatoModel->Salva($contato, $inscricao->getCoPessoa()->getCoContato()->getCoContato());

            $PessoaModel->Salva($pessoa, $inscricao->getCoPessoa()->getCoPessoa());

            $insc[Constantes::DS_PASTORAL] = $dados[Constantes::DS_PASTORAL];
            $insc[Constantes::DS_MEMBRO_ATIVO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[Constantes::DS_MEMBRO_ATIVO])) ? $dados[Constantes::DS_MEMBRO_ATIVO] : null
            );
            $insc[Constantes::ST_EQUIPE_TRABALHO] = FuncoesSistema::retornoCheckbox(
                (!empty($dados[Constantes::ST_EQUIPE_TRABALHO])) ? $dados[Constantes::ST_EQUIPE_TRABALHO] : null
            );
            $insc[Constantes::NU_CAMISA] = $dados[Constantes::NU_CAMISA][0];
            $insc[Constantes::NO_RESPONSAVEL] = strtoupper(trim($dados[Constantes::NO_RESPONSAVEL]));
            $insc[Constantes::NU_TEL_RESPONSAVEL] = Valida::RetiraMascara($dados[Constantes::NU_TEL_RESPONSAVEL]);

            $InscricaoModel->Salva($insc, $coInscricao);

            $pagamento[Constantes::NU_PARCELAS] = $dados[Constantes::NU_PARCELAS][0];
            $PagamentoModel->Salva($pagamento, $pagamentoInsc->getCoPagamento());

            /** @var ParcelamentoEntidade $parcela */
            foreach ($pagamentoInsc->getCoParcelamento() as $parcela) {
                $ParcelamentoModel->Deleta($parcela->getCoParcelamento());
            }

            for ($i = 0; $i < $pagamento[Constantes::NU_PARCELAS]; $i++) {
                $novaParcela = array(
                    Constantes::NU_PARCELA => $i + 1,
                    Constantes::NU_VALOR_PARCELA => (120.00 / $pagamento[Constantes::NU_PARCELAS]),
                    Constantes::DT_VENCIMENTO => Valida::DataAtualBanco('Y-m-d'),
                    Constantes::CO_TIPO_PAGAMENTO => 1,
                    Constantes::CO_PAGAMENTO => $pagamentoInsc->getCoPagamento(),
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
            $inscricao = $InscricaoModel->PesquisaUmQuando([Constantes::CO_INSCRICAO => $coInscricao]);

            $res[Constantes::DS_MEMBRO_ATIVO] = ($inscricao->getDsMembroAtivo() == 'S')
                ? 'checked' : '';
            $res[Constantes::DS_RETIRO] = ($inscricao->getDsRetiro() == 'S')
                ? 'checked' : '';
            $res[Constantes::ST_EQUIPE_TRABALHO] = ($inscricao->getStEquipeTrabalho() == 'S')
                ? 'checked' : '';
            $res[Constantes::CO_INSCRICAO] = $inscricao->getCoInscricao();
            $res[Constantes::NO_PESSOA] = $inscricao->getCoPessoa()->getNoPessoa();
            $res[Constantes::NU_TEL1] = Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel1());
            $res[Constantes::NU_TEL2] = Valida::MascaraTel($inscricao->getCoPessoa()->getCoContato()->getNuTel2());
            $res[Constantes::NU_CPF] = Valida::MascaraCpf($inscricao->getCoPessoa()->getNuCpf());
            $res[Constantes::NU_RG] = $inscricao->getCoPessoa()->getNuRg();
            $res[Constantes::DT_NASCIMENTO] = Valida::DataShow($inscricao->getCoPessoa()->getDtNascimento());
            $res[Constantes::ST_SEXO] = $inscricao->getCoPessoa()->getStSexo();
            $res[Constantes::NU_PARCELAS] = $inscricao->getCoPagamento()->getNuParcelas();
            $res[Constantes::NU_CAMISA] = $inscricao->getNuCamisa();

            $res[Constantes::DS_EMAIL] = $inscricao->getCoPessoa()->getCoContato()->getDsEmail();
            $res[Constantes::NO_RESPONSAVEL] = $inscricao->getNoResponsavel();
            $res[Constantes::NU_TEL_RESPONSAVEL] = Valida::MascaraTel($inscricao->getNuTelResponsavel());
            $res[Constantes::DS_PASTORAL] = $inscricao->getDsPastoral();
            $res["ds_pastoral_ativo"] = ($inscricao->getDsPastoral()) ? 'checked' : '';

            $res[Constantes::DS_ENDERECO] = $inscricao->getCoPessoa()->getCoEndereco()->getDsEndereco();
            $res[Constantes::DS_COMPLEMENTO] = $inscricao->getCoPessoa()->getCoEndereco()->getDsComplemento();
            $res[Constantes::DS_BAIRRO] = $inscricao->getCoPessoa()->getCoEndereco()->getDsBairro();
            $res[Constantes::NO_CIDADE] = $inscricao->getCoPessoa()->getCoEndereco()->getNoCidade();
            $res[Constantes::NU_CEP] = $inscricao->getCoPessoa()->getCoEndereco()->getNuCep();
            $res[Constantes::SG_UF] = $inscricao->getCoPessoa()->getCoEndereco()->getSgUf();
            $this->form = MembroWebForm::Cadastrar($inscricao->getCoInscricao(), $res, $id);
        endif;

    }

    public function ListarInscricao()
    {
        $inscricaoModel = new InscricaoModel();
        $dados = array();
        $session = new Session();
        

        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $session->FinalizaSession(PESQUISA_AVANCADA);
        }
        if (!empty($_POST)) {
            $Condicoes = array(
                "pes." . Constantes::NO_PESSOA => trim($_POST[Constantes::NO_PESSOA]),
                "pes." . Constantes::NU_CPF => Valida::RetiraMascara($_POST[Constantes::NU_CPF]),
//                "pag." . Constantes::TP_SITUACAO => $_POST[Constantes::TP_SITUACAO][0],
                "pag." . Constantes::TP_SITUACAO => "C', 'I",
                "insc." . Constantes::DS_MEMBRO_ATIVO => $_POST[Constantes::DS_MEMBRO_ATIVO][0],
//                "insc." . Constantes::ST_EQUIPE_TRABALHO => $_POST[Constantes::ST_EQUIPE_TRABALHO][0],
                "insc." . Constantes::ST_EQUIPE_TRABALHO => 'N',
            );
            $session->setSession(PESQUISA_AVANCADA, $Condicoes);
            $inscricoes = $inscricaoModel->PesquisaAvancada($Condicoes);
            $todos = array();
            foreach ($inscricoes as $inscricao) {
                $todos[] = $inscricao['co_inscricao'];
            }
            if ($todos) {
                $insc[Constantes::CO_INSCRICAO] = implode(', ', $todos);
                $this->result = $inscricaoModel->PesquisaTodos($insc);
            } else {
                $this->result = array();
            }
        } else {
            $this->result = $inscricaoModel->PesquisaTodos($dados);
        }

    }

    // AÇÃO DE EXPORTAÇÃO
    public function ExportarListarInscricao()
    {
        $inscricaoModel = new InscricaoModel();
        $session = new Session();
        if ($session->CheckSession(PESQUISA_AVANCADA)) {
            $Condicoes = $session->getSession(PESQUISA_AVANCADA);
            $inscricoes = $inscricaoModel->PesquisaAvancada($Condicoes);
            $todos = array();
            foreach ($inscricoes as $inscricao) {
                $todos[] = $inscricao['co_inscricao'];
            }
            if ($todos) {
                $insc[Constantes::CO_INSCRICAO] = implode(', ', $todos);
                $result = $inscricaoModel->PesquisaTodos($insc);
            } else {
                $result = array();
            }
        } else {
            $result = $inscricaoModel->PesquisaTodos();
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
            $dados[$i][Constantes::NO_PESSOA] = strtoupper($res->getCoPessoa()->getNoPessoa());
            $dados[$i][Constantes::NU_TEL1] = Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel1()) .
                ' / ' . Valida::MascaraTel($res->getCoPessoa()->getCoContato()->getNuTel2());
            $dados[$i][Constantes::NU_CPF] = $documento;
            $dados[$i][Constantes::DT_NASCIMENTO] = Valida::DataShow($res->getCoPessoa()->getDtNascimento());
            $dados[$i][Constantes::ST_EQUIPE_TRABALHO] = FuncoesSistema::SituacaoSimNao($res->getStEquipeTrabalho());
            $dados[$i][Constantes::DS_MEMBRO_ATIVO] = FuncoesSistema::SituacaoSimNao($res->getDsMembroAtivo());
            $dados[$i][Constantes::TP_SITUACAO] = FuncoesSistema::Pagamento($res->getCoPagamento()->getTpSituacao());
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
        $tipoPagametnoModel = new TipoPagamentoModel();
        $tipos = $tipoPagametnoModel->PesquisaTodos();
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
            $coParcela = $dados[Constantes::CO_PARCELAMENTO];

            $parcela[Constantes::NU_VALOR_PARCELA_PAGO] = Valida::FormataMoedaBanco($dados[Constantes::NU_VALOR_PARCELA_PAGO]);
            $parcela[Constantes::DT_VENCIMENTO_PAGO] = ($dados[Constantes::DT_VENCIMENTO_PAGO])
                ? Valida::DataDBDate($dados[Constantes::DT_VENCIMENTO_PAGO])
                : null;
            $parcela[Constantes::CO_TIPO_PAGAMENTO] = $dados[Constantes::DS_TIPO_PAGAMENTO][0];
            $parcela[Constantes::DS_OBSERVACAO] = Valida::LimpaVariavel($dados[Constantes::DS_OBSERVACAO]);

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
            if($total == 120){
                $pag[Constantes::TP_SITUACAO] = "C";
            }elseif($total > 0){
                $pag[Constantes::TP_SITUACAO] = "I";
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

            $res[Constantes::CO_PARCELAMENTO] = $parcela->getCoParcelamento();
            $res[Constantes::NU_VALOR_PARCELA] = Valida::FormataMoeda($parcela->getNuValorParcela());
            $res[Constantes::NU_VALOR_PARCELA_PAGO] = Valida::FormataMoeda($parcela->getNuValorParcelaPago());
            $res[Constantes::DT_VENCIMENTO_PAGO] = ($parcela->getDtVencimentoPago())
                ? Valida::DataShow($parcela->getDtVencimentoPago())
                : null;
            $res[Constantes::DS_OBSERVACAO] = $parcela->getDsObservacao();
            $res[Constantes::SG_TIPO_PAGAMENTO] = $parcela->getCoTipoPagamento()->getSgTipoPagamento();

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
   
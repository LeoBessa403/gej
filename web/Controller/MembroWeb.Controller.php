<?php

class MembroWeb
{
    public $result;
    public $resultAlt;
    public $form;

    function CadastroRetiroCarnaval()
    {

        $id = "CadastroRetiroCarnaval";

        if (!empty($_POST[$id])):

            $dados = $_POST;
            $EnderecoModel = new EnderecoModel();
            $ContatoModel = new ContatoModel();
            $PessoaModel = new PessoaModel();
            $InscricaoModel = new InscricaoModel();

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

            $pessoa[Constantes::CO_ENDERECO] = $EnderecoModel->Salva($endereco);
            $pessoa[Constantes::CO_CONTATO] = $ContatoModel->Salva($contato);

            $insc[Constantes::CO_PESSOA] = $PessoaModel->Salva($pessoa);
            $insc[Constantes::DS_PASTORAL] = $dados[Constantes::DS_PASTORAL];
            $insc[Constantes::DS_MEMBRO_ATIVO] = FuncoesSistema::retornoCheckbox($dados[Constantes::DS_MEMBRO_ATIVO]);
            $insc[Constantes::NU_CAMISA] = $dados[Constantes::NU_CAMISA][0];
            $insc[Constantes::NO_RESPONSAVEL] = strtoupper(trim($dados[Constantes::NO_RESPONSAVEL]));
            $insc[Constantes::NU_TEL_RESPONSAVEL] = Valida::RetiraMascara($dados[Constantes::NU_TEL_RESPONSAVEL]);



            $coInscricao = $InscricaoModel->Salva($insc);
            unset($_POST);
            $this->FormaDePagamento($coInscricao);
            UrlAmigavel::$controller = 'MembroWeb';
            UrlAmigavel::$action = 'FormaDePagamento';
        endif;

        $this->form = MembroWebForm::Cadastrar();
    }

    static function montaComboCamisas()
    {
        return array(
            "" => "Selecione um Tamanho",
            "1" => "BL PP",
            "2" => "BL P",
            "3" => "BL M",
            "4" => "BL G",
            "5" => "BL GG",
            "6" => "P",
            "7" => "M",
            "8" => "G",
            "9" => "GG"
        );
    }

    function FormaDePagamento($coInscricao)
    {
        $this->coInscricao = $coInscricao;
        $this->formas = Inscricao::FormasDePagamento();
    }

    function ConcluirInscricao()
    {
        $id = "formaPagamento";

        if (!empty($_POST[$id])):
            $dados = $_POST;
            $pagamentoModel = new PagamentoModel();
            $parcelaModel = new ParcelamentoModel();
            $pagamento[Constantes::NU_TOTAL] = '120.00';
            $pagamento[Constantes::NU_PARCELAS] = 1;
            $pagamento[Constantes::CO_INSCRICAO] = $dados[Constantes::CO_INSCRICAO];

            $parcela[Constantes::CO_PAGAMENTO] = $pagamentoModel->Salva($pagamento);
            $parcela[Constantes::CO_TIPO_PAGAMENTO] = $dados[Constantes::CO_TIPO_PAGAMENTO];
            $parcela[Constantes::NU_PARCELA] = 1;
            $parcela[Constantes::NU_VALOR_PARCELA] = '120.00';
            $parcela[Constantes::DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

            $parcelaModel->Salva($parcela);
        endif;
    }
}
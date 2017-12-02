<?php

class MembroWeb extends AbstractController
{
    public $result;
    public $resultAlt;
    public $form;
    public $formas;
    public $coInscricao;

    function CadastroRetiroCarnaval()
    {
        $id = "CadastroRetiroCarnaval";

        if (!empty($_POST[$id])):
          $this->salvarInscricao($_POST, $_FILES);
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
            $pagamento[NU_TOTAL] = '120.00';
            $pagamento[NU_PARCELAS] = 1;
            $pagamento[CO_INSCRICAO] = $dados[CO_INSCRICAO];

            $parcela[CO_PAGAMENTO] = $pagamentoModel->Salva($pagamento);
            $parcela[CO_TIPO_PAGAMENTO] = $dados[CO_TIPO_PAGAMENTO];
            $parcela[NU_PARCELA] = 1;
            $parcela[NU_VALOR_PARCELA] = '120.00';
            $parcela[DT_VENCIMENTO] = Valida::DataAtualBanco('Y-m-d');

            $parcelaModel->Salva($parcela);
        endif;
    }

    public function salvarInscricao($dados, $foto)
    {
        /** @var EnderecoService $enderecoService */
        $enderecoService = $this->getService(ENDERECO_SERVICE);
        /** @var ContatoService $contatoService */
        $contatoService = $this->getService(CONTATO_SERVICE);
        /** @var InscricaoService $inscricaoService */
        $inscricaoService = $this->getService(INSCRICAO_SERVICE);
        /** @var PessoaService $pessoaService */
        $pessoaService = $this->getService(PESSOA_SERVICE);

        $endereco = $enderecoService->getDados($dados, EnderecoEntidade::ENTIDADE);
        $contato = $contatoService->getDados($dados, ContatoEntidade::ENTIDADE);
        $inscricao = $inscricaoService->getDados($dados, InscricaoEntidade::ENTIDADE);
        $pessoa = $pessoaService->getDados($dados, PessoaEntidade::ENTIDADE);

        $endereco[SG_UF] = $dados[SG_UF][0];

        $pessoa[NO_PESSOA] = strtoupper($dados[NO_PESSOA]);
        $pessoa[DT_NASCIMENTO] = Valida::DataDBDate($dados[DT_NASCIMENTO]);
        $pessoa[ST_SEXO] = $dados[ST_SEXO][0];

        $pessoa[CO_ENDERECO] = $enderecoService->Salva($endereco);
        $pessoa[CO_CONTATO] = $contatoService->Salva($contato);

        $inscricao[CO_PESSOA] = $pessoaService->Salva($pessoa);
        $inscricao[DS_MEMBRO_ATIVO] = FuncoesSistema::retornoCheckbox(
            (!empty($dados[DS_MEMBRO_ATIVO])) ? $dados[DS_MEMBRO_ATIVO] : null
        );
        $inscricao[DS_RETIRO] = FuncoesSistema::retornoCheckbox(
            (!empty($dados[DS_RETIRO])) ? $dados[DS_RETIRO] : null
        );
        $inscricao[NU_CAMISA] = $dados[NU_CAMISA][0];
        $inscricao[NO_RESPONSAVEL] = strtoupper($dados[NO_RESPONSAVEL]);

        $coInscricao = $inscricaoService->Salva($inscricao);
        unset($_POST);
        $this->FormaDePagamento($coInscricao);
        UrlAmigavel::$controller = 'MembroWeb';
        UrlAmigavel::$action = 'FormaDePagamento';
    }
}
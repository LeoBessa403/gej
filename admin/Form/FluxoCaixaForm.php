<?php

class FluxoCaixaForm
{

    public static function Cadastro($res)
    {
        $id = "cadastroFluxoCaixa";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" .
            UrlAmigavel::$action, 'Salvar', 12);
        if ($res):
            $formulario->setValor($res);
        endif;

        $checked = "checked";
        if ($res):
            if ($res[TP_FLUXO] == "S"):
                $checked = "";
            endif;
        endif;

        $label_options = array("Entrada", "Saída", "verde", "vermelho");
        $formulario
            ->setLabel("Tipo do Fluxo")
            ->setId(TP_FLUXO)
            ->setType("checkbox")
            ->setClasses($checked)
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR)
            ->setClasses("moeda ob")
            ->setLabel("Valor r$")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(DT_REALIZADO)
            ->setClasses("data ob")
            ->setLabel("Data Realizado")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(DT_VENCIMENTO)
            ->setClasses("data ob")
            ->setLabel("Data Vencimento")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $label_options = PagamentoService::SituacaoPagamento();
        $formulario
            ->setLabel("Situação do Pagamento")
            ->setId(ST_PAGAMENTO)
            ->setType("select")
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setType("textarea")
            ->setClasses("ob")
            ->setId(DS_DESCRICAO)
            ->setLabel("Observação")
            ->CriaInpunt();


        if (!empty($res[CO_FLUXO_CAIXA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_FLUXO_CAIXA)
                ->setValues($res[CO_FLUXO_CAIXA])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function Pesquisar()
    {
        $id = "pesquisaUsuario";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, "Pesquisa", 12);

        $formulario
            ->setId("no_pessoa")
            ->setIcon("clip-user-6")
            ->setLabel("Nome do Usuario")
            ->setInfo("Pode ser Parte do nome")
            ->CriaInpunt();

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf")
            ->setTamanhoInput(6)
            ->setLabel("CPF")
            ->CriaInpunt();

        $label_options = PagamentoService::SituacaoPagamento();
        $formulario
            ->setLabel("Situação do Pagamento")
            ->setId(TP_SITUACAO)
            ->setType("select")
            ->setClasses("multipla")
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("" => "Selecione um", "S" => "Sim", "N" => "Não");
        $formulario
            ->setLabel("Membro GEJ")
            ->setId(DS_MEMBRO_ATIVO)
            ->setType("select")
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

//        $label_options = array("" => "Selecione um", "S" => "Sim","N" => "Não");
//        $formulario
//            ->setLabel("Servo")
//            ->setId(ST_EQUIPE_TRABALHO)
//            ->setType("select")
//            ->setTamanhoInput(12)
//            ->setOptions($label_options)
//            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}

?>
   
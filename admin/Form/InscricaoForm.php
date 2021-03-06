<?php

class InscricaoForm
{

    public static function EditarParcelamento($res)
    {
        $id = "EditarParcelamento";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, 'Salvar', 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId(NU_VALOR_PARCELA)
            ->setClasses("disabilita moeda")
            ->setLabel("Valor da Parcela R$")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR_PARCELA_PAGO)
            ->setClasses("moeda ob")
            ->setTamanhoInput(6)
            ->setLabel("Valor Pago da Parcela R$")
            ->CriaInpunt();

        $formulario
            ->setId(DT_VENCIMENTO_PAGO)
            ->setClasses("data ob")
            ->setLabel("Data paga")
            ->setTamanhoInput(6)
            ->setInfo("Data do pagamento realizado")
            ->CriaInpunt();

        $label_options = TipoPagamentoService::montaComboTodosTipoPagamento();
        $formulario
            ->setLabel("Forma de Pagamento")
            ->setId(CO_TIPO_PAGAMENTO)
            ->setClasses("ob")
            ->setType("select")
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setType("textarea")
            ->setId(DS_OBSERVACAO)
            ->setLabel("Observação")
            ->CriaInpunt();


        $formulario
            ->setType("hidden")
            ->setId(CO_PARCELAMENTO)
            ->setValues($res[CO_PARCELAMENTO])
            ->CriaInpunt();

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

        $label_options = array("" => "Selecione um", "S" => "Sim","N" => "Não");
        $formulario
            ->setLabel("Servo")
            ->setId(ST_EQUIPE_TRABALHO)
            ->setType("select")
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }

    public static function DetalharPagametno($res)
    {
        $id = "DetalharInscricao";
        $action = UrlAmigavel::$modulo . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action;

        $formulario = new Form($id, $action);
        $formulario->setValor($res);

        $label_options = array("1" => "1", "2" => "2", "3" => "3");
        $formulario
            ->setLabel("Números de Parcelas")
            ->setId(NU_PARCELAS)
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR_DESCONTO)
            ->setClasses("moeda")
            ->setLabel("Valor de desconto R$")
            ->CriaInpunt();

        $formulario
            ->setType("textarea")
            ->setClasses("ob")
            ->setId(DS_OBSERVACAO)
            ->setLabel("Motivo desconto")
            ->CriaInpunt();

        $formulario
            ->setType("hidden")
            ->setId(CO_INSCRICAO)
            ->setValues($res[CO_INSCRICAO])
            ->CriaInpunt();

        return $formulario->finalizaForm(false,false, "Edição do Pagamento");
    }
}

?>
   
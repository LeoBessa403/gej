<?php

class CamisaForm
{

    public static function Cadastro($res)
    {
        $id = "cadastroCamisa";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" .
            UrlAmigavel::$action, 'Salvar', 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId(NO_CAMISA)
            ->setClasses("ob")
            ->setLabel("Camisa")
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Acenta pedidos?")
            ->setId(TP_PEDIDO)
            ->setType("checkbox")
            ->setClasses($res[TP_PEDIDO])
            ->setTamanhoInput(12)
            ->setOptions($label_options)
            ->CriaInpunt();

        $options = CorCamisaService::PesquisaCoresCamisaCombo();
        $formulario
            ->setId(CO_COR_CAMISA)
            ->setType("select")
            ->setClasses("multipla ob")
            ->setLabel("Cor da Camisa")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR_CUSTO)
            ->setClasses("moeda ob")
            ->setLabel("Valor de custo r$")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(NU_VALOR_VENDA)
            ->setClasses("moeda ob")
            ->setLabel("Valor de venda r$")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(DS_CAMINHO)
            ->setType("singlefile")
            ->setInfo("Foto de amostra da camisa")
            ->setTamanhoInput(12)
            ->setLabel("Modelo da Camisa")
            ->CriaInpunt();

        if (!empty($res[CO_CAMISA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CAMISA)
                ->setValues($res[CO_CAMISA])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

    public static function CadastroPedido($res)
    {
        $id = "cadastroCamisa";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" .
            UrlAmigavel::$action, 'Salvar', 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Para o Estoque?")
            ->setId(ST_ESTOQUE)
            ->setType("checkbox")
            ->setClasses($res[ST_ESTOQUE])
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob nome")
            ->setTamanhoInput(6)
            ->setLabel("Quem Pediu")
            ->CriaInpunt();

        $formulario
            ->setId(ST_PEDIDO)
            ->setType("select")
            ->setClasses("ob")
            ->setTamanhoInput(6)
            ->setLabel("Status Pedido")
            ->setOptions(StatusPedidoEnum::$descricao)
            ->CriaInpunt();

        $label_options = PagamentoService::SituacaoPagamento();
        $formulario
            ->setLabel("Situação do Pagamento")
            ->setId(ST_PAGAMENTO)
            ->setType("select")
            ->setClasses("ob")
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $options = CorCamisaService::PesquisaCoresCamisaCombo($res[CO_CAMISA]);
        $formulario
            ->setId(CO_COR_CAMISA)
            ->setType("select")
            ->setTamanhoInput(6)
            ->setClasses("ob")
            ->setLabel("Cor da Camisa")
            ->setOptions($options)
            ->CriaInpunt();

        $formulario
            ->setId(NU_QUANTIDADE)
            ->setTamanhoInput(6)
            ->setClasses("numero ob")
            ->setLabel("Quantidade")
            ->CriaInpunt();

        $formulario
            ->setId(DT_PEDIDO)
            ->setClasses("data ob")
            ->setLabel("Data do Pedido")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $formulario
            ->setId(DT_ENTREGUE)
            ->setClasses("data ob")
            ->setLabel("Data Entregue")
            ->setTamanhoInput(6)
            ->CriaInpunt();

        $opticoes_camisa = TamanhoCamisaService::montaComboTamanhoCamisas();
        $formulario
            ->setId(CO_TAMANHO_CAMISA)
            ->setType("select")
            ->setTamanhoInput(6)
            ->setClasses("ob")
            ->setOptions($opticoes_camisa)
            ->setLabel("Tamanho da Camisa")
            ->CriaInpunt();


        $formulario
            ->setType("textarea")
            ->setId(DS_OBSERVACAO)
            ->setTamanhoInput(12)
            ->setLabel("Observação")
            ->CriaInpunt();

        $formulario
            ->setType("hidden")
            ->setId(CO_CAMISA)
            ->setValues($res[CO_CAMISA])
            ->CriaInpunt();

        if (!empty($res[CO_PEDIDO_CAMISA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PEDIDO_CAMISA)
                ->setValues($res[CO_PEDIDO_CAMISA])
                ->CriaInpunt();

            $formulario
                ->setType("hidden")
                ->setId(CO_PED_CAM_TAMANHO_COR)
                ->setValues($res[CO_PED_CAM_TAMANHO_COR])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm('Camisa/ListarPedido/'
            . Valida::GeraParametro(CO_CAMISA . "/" . $res[CO_CAMISA]));
    }

}

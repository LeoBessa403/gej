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

        $formulario
            ->setId(NO_PESSOA)
            ->setClasses("ob nome")
            ->setTamanhoInput(12)
            ->setLabel("Nome")
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Para o Estoque?")
            ->setId(ST_ESTOQUE)
            ->setType("checkbox")
            ->setClasses($res[ST_ESTOQUE])
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Foi Pedida?")
            ->setId(ST_PEDIDO)
            ->setType("checkbox")
            ->setClasses($res[ST_PEDIDO])
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Já esta paga?")
            ->setId(TP_SITUACAO)
            ->setType("checkbox")
            ->setClasses($res[TP_SITUACAO])
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $label_options = array("Sim", "Não", "verde", "vermelho");
        $formulario
            ->setLabel("Foi entregue?")
            ->setId(ST_ENTREGUE)
            ->setType("checkbox")
            ->setClasses($res[ST_ENTREGUE])
            ->setTamanhoInput(6)
            ->setOptions($label_options)
            ->CriaInpunt();

        $opcoes = ['' => 'Selecione a cor'];
        $options = CorCamisaService::PesquisaCoresCamisaCombo();
        $opcoesGeral = array_merge($opcoes, $options);
        $formulario
            ->setId(CO_COR_CAMISA)
            ->setType("select")
            ->setClasses("ob")
            ->setLabel("Cor da Camisa")
            ->setOptions($opcoesGeral)
            ->CriaInpunt();


        $opticoes_camisa = CamisaService::montaComboCamisas();
        $formulario
            ->setId(NU_CAMISA)
            ->setType("select")
            ->setTamanhoInput(12)
            ->setClasses("ob")
            ->setOptions($opticoes_camisa)
            ->setLabel("Tamanho da Camisa")
            ->CriaInpunt();

        if (!empty($res[CO_CAMISA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_CAMISA)
                ->setValues($res[CO_CAMISA])
                ->CriaInpunt();
        endif;

        if (!empty($res[CO_PEDIDO_CAMISA])):
            $formulario
                ->setType("hidden")
                ->setId(CO_PEDIDO_CAMISA)
                ->setValues($res[CO_PEDIDO_CAMISA])
                ->CriaInpunt();
        endif;

        return $formulario->finalizaForm();
    }

}

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

}

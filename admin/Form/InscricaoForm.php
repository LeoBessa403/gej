<?php

class InscricaoForm
{

    public static function EditarParcelamento($res)
    {
        $id = "EditarParcelamento";

        /** @var Form $formulario */
        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, 'Cadastrar', 6);
        if ($res):
            $formulario->setValor($res);
        endif;

        $formulario
            ->setId(Constantes::NU_VALOR_PARCELA)
            ->setClasses("disabilita moeda")
            ->setLabel("Valor da Parcela R$")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::NU_VALOR_PARCELA_PAGO)
            ->setClasses("moeda")
            ->setTamanhoInput(6)
            ->setLabel("Valor Pago da Parcela R$")
            ->CriaInpunt();

        $formulario
            ->setId(Constantes::DT_VENCIMENTO_PAGO)
            ->setClasses("data")
            ->setLabel("Data Paga")
            ->setTamanhoInput(6)
            ->setInfo("Data do pagamento realizado")
            ->CriaInpunt();

        $label_options = Inscricao::FormasDePagamento();
        $formulario
            ->setLabel("Forma de Pagamento")
            ->setId(Constantes::DS_TIPO_PAGAMENTO)
            ->setType("select")
            ->setOptions($label_options)
            ->CriaInpunt();

            $formulario
                ->setType("hidden")
                ->setId(Constantes::CO_PARCELAMENTO)
                ->setValues($res[Constantes::CO_PARCELAMENTO])
                ->CriaInpunt();

        return $formulario->finalizaForm();
    }
}
?>
   
<?php

class AcessoForm
{

    public static function Pesquisar($usuarioService)
    {
        $id = "pesquisaAcesso";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action, "Pesquisa", 12);

        $usuarios = $usuarioService->PesquisaUsuariosCombo([]);
        $formulario
            ->setId(CO_USUARIO)
            ->setLabel("Nome do Usuário")
            ->setClasses("multipla")
            ->setInfo("Pode selecionar vários USUÁRIOS.")
            ->setType("select")
            ->setOptions($usuarios)
            ->CriaInpunt();

        $formulario
            ->setId(NU_CPF)
            ->setClasses("cpf")
            ->setTamanhoInput(7)
            ->setLabel("CPF")
            ->CriaInpunt();

        $formulario
            ->setId(DT_INICIO_ACESSO)
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setClasses("data dt1 ob")
            ->setLabel("Ínicio")
            ->setValor(date('d/m/Y'))
            ->CriaInpunt();

        $formulario
            ->setId(DT_FIM_ACESSO)
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(6)
            ->setValor(date('d/m/Y'))
            ->setClasses("data dt2 ob")
            ->setLabel("Fim")
            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}
?>
   
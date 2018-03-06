<?php

class AuditoriaForm
{

    public static function Pesquisar($usuarioService, $auditoriaService)
    {
        $id = "pesquisaAcesso";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Pesquisa", 12);

        $usuarios = $usuarioService->PesquisaUsuariosCombo([]);
        $formulario
            ->setId(CO_USUARIO)
            ->setLabel("Nome do Usuário")
            ->setClasses("multipla")
            ->setInfo("Pode selecionar vários USUÁRIOS.")
            ->setType("select")
            ->setOptions($usuarios)
            ->CriaInpunt();

        $tabelas = $auditoriaService->PesquisaTabelasCombo();
        $formulario
            ->setId(NO_TABELA)
            ->setLabel("Entidade")
            ->setClasses("multipla")
            ->setInfo("Pode selecionar várias TABELAS.")
            ->setType("select")
            ->setOptions($tabelas)
            ->CriaInpunt();

        $formulario
            ->setId('dt1')
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(3)
            ->setClasses("data dt1 ob")
            ->setValor(date('d/m/Y'))
            ->setLabel("Período Inicío")
            ->CriaInpunt();

        $formulario
            ->setId('dt2')
            ->setIcon("clip-calendar-3")
            ->setTamanhoInput(3)
            ->setValor(date('d/m/Y'))
            ->setClasses("data dt2 ob")
            ->setLabel("Fim")
            ->CriaInpunt();

        return $formulario->finalizaFormPesquisaAvancada();
    }
}
?>
   
<?php

class AgendaForm
{
    public static function Cadastrar()
    {
        $id = "cadastroCompromisso";

        $formulario = new Form($id, ADMIN . "/" . UrlAmigavel::$controller . "/" . UrlAmigavel::$action,
            "Salvar", 6);

        $formulario
            ->setId(CO_EVENTO)
            ->setType("select")
            ->setLabel("Evento")
            ->setAutocomplete(EventoEntidade::TABELA, DS_DESCRICAO, EventoEntidade::CHAVE)
            ->CriaInpunt();

        $formulario
            ->setId(DS_TITULO)
            ->setClasses("ob")
            ->setLabel("Título")
            ->CriaInpunt();

        $perfis = PerfilService::montaComboTodosPerfis();
        $labels = FuncoesSistema::ValidaPerfilCadastro($perfis);

        $formulario
            ->setLabel("Participantes")
            ->setId(CO_PERFIL)
            ->setClasses("multipla ob")
            ->setInfo("Pode selecionar vários perfis.")
            ->setType("select")
            ->setOptions($labels)
            ->CriaInpunt();

        $formulario
            ->setId(CO_CATEGORIA_AGENDA)
            ->setType("select")
            ->setLabel("Categoria")
            ->setClasses("ob")
            ->setAutocomplete(
                CategoriaAgendaEntidade::TABELA, NO_CATEGORIA_AGENDA, CategoriaAgendaEntidade::CHAVE
            )
            ->CriaInpunt();

        $formulario
            ->setId(DT_INICIO)
            ->setTamanhoInput(6)
            ->setClasses("data ob")
            ->setIcon("clip-calendar-3")
            ->setLabel("Data de Inicio")
            ->CriaInpunt();

        $formulario
            ->setId("hr_inicio")
            ->setTamanhoInput(6)
            ->setClasses("horas ob")
            ->setPlace("Formato 24Hrs")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario Inicial")
            ->CriaInpunt();

        $formulario
            ->setId(DT_FIM)
            ->setTamanhoInput(6)
            ->setClasses("data")
            ->setIcon("clip-calendar-3")
            ->setInfo("Data Previsto para Terminar")
            ->setLabel("Data de Termino")
            ->CriaInpunt();

        $formulario
            ->setId("hr_fim")
            ->setTamanhoInput(6)
            ->setPlace("Formato 24Hrs")
            ->setInfo("Horário Previsto para Terminar")
            ->setClasses("horas")
            ->setIcon("clip-clock-2", "dir")
            ->setLabel("Hórario Final")
            ->CriaInpunt();

        $formulario
            ->setId(DS_DESCRICAO)
            ->setClasses("ob")
            ->setType("textarea")
            ->setLabel("Descrição da Eventualidade")
            ->CriaInpunt();

        $formulario
            ->setType("hidden")
            ->setId(CO_AGENDA)
            ->setValues(null)
            ->CriaInpunt();

        return $formulario->finalizaFormAgenda();
    }
}

?>
   
<?php

class Agenda extends AbstractController
{

    public $result;
    public $resultAlt;
    public $form;
    public $categoriaAgenda;

    public function Calendario()
    {
        /** @var AgendaService $agendaService */
        $agendaService = $this->getService(AGENDA_SERVICE);
        /** @var CategoriaAgendaService $categoriaAgendaService */
        $categoriaAgendaService = $this->getService(CATEGORIA_AGENDA_SERVICE);
        /** @var PerfilService $perfilService */
        $perfilService = $this->getService(PERFIL_SERVICE);

        if (!empty($_POST)):
            $agendaService->SalvaCompromissoAgenda($_POST);
        endif;
        $this->categoriaAgenda = $categoriaAgendaService->PesquisaTodos();

        $this->form = AgendaForm::Cadastrar($perfilService);
    }

}

?>
   
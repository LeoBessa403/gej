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

        if (!empty($_POST)):
            $agendaService->SalvaCompromissoAgenda($_POST);
        endif;
        $categorias = CategoriaAgendaEnum::$descricao;
        $cores = CategoriaAgendaEnum::$cor;
        foreach ($categorias as $index => $categoria){
            $this->categoriaAgenda[$cores[$index]] =  $categoria;
        }
    }

    public function CadastroAgenda()
    {
        $res["hr_inicio"] = UrlAmigavel::PegaParametro("hr");
        $res[DT_INICIO] = UrlAmigavel::PegaParametro("dt");

        $this->form = AgendaForm::Cadastrar($res);
    }

}

?>
   
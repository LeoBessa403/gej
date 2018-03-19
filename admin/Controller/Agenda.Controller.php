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

        $res = array();
        if (!empty($_POST)):
            $retorno = $agendaService->SalvaCompromissoAgenda($_POST);
            if (!$retorno[SUCESSO]) {
                $res[DS_DESCRICAO] = $_POST[DS_DESCRICAO];
                $res[DT_INICIO] = $_POST[DT_INICIO];
                $res['hr_inicio'] = $_POST['hr_inicio'];
                $res[DT_FIM] = (!empty($_POST[DT_FIM])) ? $_POST[DT_FIM] : null;
                $res['hr_fim'] = (!empty($_POST['hr_fim'])) ? $_POST['hr_fim'] : null;
                $res[DS_TITULO] = $_POST[DS_TITULO];
                $res[CO_CATEGORIA_AGENDA] = $_POST[CO_CATEGORIA_AGENDA][0];
                $res[CO_EVENTO] = (!empty($_POST[CO_EVENTO][0])) ? $_POST[CO_EVENTO][0] : null;
                $res[CO_AGENDA] = null;
            }
        endif;
        $this->categoriaAgenda = $categoriaAgendaService->PesquisaTodos();
        echo AgendaForm::Cadastrar($perfilService, $res);
    }

}

?>
   
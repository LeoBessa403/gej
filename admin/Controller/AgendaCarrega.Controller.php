<?php
// CARREGA A AGENDA INICIALMENTE
include_once "../../library/Config.inc.php";

/** @var AgendaService $agendaService */
$agendaService = new AgendaService();
$agendas = $agendaService->PesquisaTodos();

$result = [];
$i = 0;
/** @var AgendaEntidade $agenda */
foreach ($agendas as $agenda) {
    $result[$i] = $agendaService->PesquisaUmRegistro($agenda->getCoAgenda());
    $i++;
}
$result2 = FuncoesSistema::ValidaPerfilAgenda($result);

$eventos = array();
/** @var AgendaEntidade $agenda */
foreach ($result2 as $agenda) {
    $evento = array(
        'id' => (int)$agenda->getCoAgenda(),
        'title' => strtoupper($agenda->getCoCategoriaAgenda()->getNoCategoriaAgenda()) .
            " - " . $agenda->getDsTitulo(),
        'start' => $agenda->getDtInicio(),
        'end' => $agenda->getDtFim(),
        'className' => 'label-'.$agenda->getCoCategoriaAgenda()->getDsCor(),
        'allDay' => ($agenda->getStDiaTodo() == "N" ? FALSE : TRUE)
    );
    $eventos[] = $evento;
}

echo json_encode($eventos);

?>
   
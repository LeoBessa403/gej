<?php
// CARREGA A AGENDA INICIALMENTE
include_once "../../library/Config.inc.php";

/** @var AgendaService $agendaService */
$agendaService = new AgendaService();
/** @var PerfilAgendaService $perfilAgendaService */
$perfilAgendaService = new PerfilAgendaService();
$agendas = $agendaService->PesquisaTodos();

$result = [];
$i = 0;
/** @var AgendaEntidade $agenda */
foreach ($agendas as $agenda) {
    $result[$i][CO_PERFIL] = $perfilAgendaService->PesquisaUmQuando([CO_AGENDA => $agenda->getCoAgenda()]);
    $i++;
}
//$result2 = FuncoesSistema::ValidaAgenda($result);

$eventos = array();
/** @var PerfilAgendaEntidade $value */
foreach ($result as $value) {
    echo '';
    /** @var AgendaEntidade $agenda */
    $agenda = $value->getCoAgenda();
    $evento = array(
                        'id' => (int) $agenda->getCoAgenda(),
                        'title' => strtoupper($agenda->getCoCategoriaAgenda()->getNoCategoriaAgenda()).
                            " - ".$agenda->getDsTitulo(),
                        'start' => $agenda->getDtInicio(),
                        'end' => $agenda->getDtFim(),
                        'className' => $agenda->getCoCategoriaAgenda()->getDsCor(),
                        'allDay' => ($agenda->getStDiaTodo() == "N" ? FALSE : TRUE)
                );
    $eventos[] = $evento;
}

echo json_encode($eventos);
    
?>
   
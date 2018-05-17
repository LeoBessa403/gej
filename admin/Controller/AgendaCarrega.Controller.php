<?php
// CARREGA A AGENDA INICIALMENTE
include_once "../../library/Config.inc.php";

/** @var AgendaService $agendaService */
$agendaService = new AgendaService();
$agendas = $agendaService->PesquisaAgendaCalendario();

/** @var UsuarioService $usuarioService */
$usuarioService = new UsuarioService();
$usuarios = $usuarioService->PesquisaUsuarioAgenda();

$eventos = array();
foreach ($agendas as $agenda) {
    extract($agenda);
    $evento = array(
        'id' => (int)$co_agenda,
        'title' => $ds_titulo,
        'start' => $dt_inicio,
        'end' => $dt_fim,
        'className' => 'label-' . $ds_cor,
        'allDay' => ($st_dia_todo == "N" ? FALSE : TRUE)
    );
    $eventos[] = $evento;
}
foreach ($usuarios as $usuario) {
    extract($usuario);
    $usua = array(
        'id' => (int)$co_usuario,
        'title' => Valida::Resumi($no_pessoa, 25),
        'start' => Date('Y') . '-' . Valida::DataShow($dt_nascimento, 'm-d') . ' 00:00:00',
        'end' => Date('Y') . '-' . Valida::DataShow($dt_nascimento, 'm-d') . ' 23:59:59',
        'className' => 'label-warning',
        'allDay' => TRUE
    );
    $eventos[] = $usua;
}

echo json_encode($eventos);

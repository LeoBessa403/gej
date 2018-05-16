<?php
// CARREGA A AGENDA INICIALMENTE
include_once "../../library/Config.inc.php";

/** @var AgendaService $agendaService */
$agendaService = new AgendaService();
$agendas = $agendaService->PesquisaTodos();
/** @var UsuarioService $usuarioService */
$usuarioService = new UsuarioService();
$usuarios = $usuarioService->PesquisaTodos();

$eventos = array();
/** @var AgendaEntidade $agenda */
foreach ($agendas as $agenda) {
    $evento = array(
        'id' => (int)$agenda->getCoAgenda(),
        'title' => $agenda->getDsTitulo(),
        'start' => $agenda->getDtInicio(),
        'end' => $agenda->getDtFim(),
        'className' => 'label-' . $agenda->getCoCategoriaAgenda()->getDsCor(),
        'allDay' => ($agenda->getStDiaTodo() == "N" ? FALSE : TRUE)
    );
    $eventos[] = $evento;
}
/** @var UsuarioEntidade $usuario */
foreach ($usuarios as $usuario) {
    $usua = array(
        'id' => (int)$usuario->getCoUsuario(),
        'title' => Valida::Resumi($usuario->getCoPessoa()->getNoPessoa(), 25),
        'start' => Date('Y') . '-' . Valida::DataShow($usuario->getCoPessoa()->getDtNascimento(), 'm-d') . ' 00:00:00',
        'end' => Date('Y') . '-' . Valida::DataShow($usuario->getCoPessoa()->getDtNascimento(), 'm-d') . ' 23:59:59',
        'className' => 'label-warning',
        'allDay' => TRUE
    );
    $eventos[] = $usua;
}

echo json_encode($eventos);

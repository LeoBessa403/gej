<?php
/* 
 * Controller résponsavel para receber e passar dados para controller responsável.
 */
include "../../library/Config.inc.php";

if (isset($_GET['valida'])) {

    switch ($_GET['valida']) {

////////////////////////////////////////////////////////////////////////
/////////////////// PARTICULARIDADES DO SISTEMA ////////////////////////
//////////////////////////////////////////////////////////////////////// 

        case 'cadastro_agenda':
            $dt = $_GET[DT_INICIO];
            $hr = $_GET['hr_inicio'];

            echo 'CadastroAgenda/'.
                Valida::GeraParametro('dt/' .$dt.'/hr/'.$hr);
            break;
        case 'pesquisa_agenda':
            if (!empty($_GET[CO_AGENDA])) {
                /** @var AgendaService $agendaService */
                $agendaService = new AgendaService();
                $coAgenda = $_GET[CO_AGENDA];

                /** @var AgendaEntidade $agenda */
                $agenda = $agendaService->PesquisaUmRegistro($coAgenda);
                $perfis = [];
                /** @var PerfilAgendaEntidade $perfilAgenda */
                foreach ($agenda->getCoPerfilAgenda() as $perfilAgenda) {
                    $perfis[CO_PERFIL][] = $perfilAgenda->getCoPerfil()->getCoPerfil();
                    $perfis[NO_PERFIL][] = $perfilAgenda->getCoPerfil()->getNoPerfil();
                }
                $agendaEdicao['perfis'] = $perfis;
                $dt_ini = explode(" ", $agenda->getDtInicio());
                $agendaEdicao[DT_INICIO] = implode("/", array_reverse(explode("-", $dt_ini[0])));
                $dt_ini = explode(":", $dt_ini[1]);
                $agendaEdicao['hr_inicio'] = $dt_ini[0] . ":" . $dt_ini[1];

                if ($agenda->getDtFim()):
                    $dt_fim = explode(" ", $agenda->getDtFim());
                    $agendaEdicao[DT_FIM] = implode("/", array_reverse(explode("-", $dt_fim[0])));
                    $dt_fim = explode(":", $dt_fim[1]);
                    $agendaEdicao['hr_fim'] = $dt_fim[0] . ":" . $dt_fim[1];
                else:
                    $agendaEdicao[DT_FIM] = null;
                    $agendaEdicao['hr_fim'] = null;
                endif;
                $agendaEdicao[DS_TITULO] = $agenda->getDsTitulo();
                $agendaEdicao[CO_EVENTO] = (!empty($agenda->getCoEvento())) ? $agenda->getCoEvento()->getCoEvento() : null;
                $agendaEdicao[CO_CATEGORIA_AGENDA] = $agenda->getCoCategoriaAgenda()->getCoCategoriaAgenda();
                $agendaEdicao[NO_CATEGORIA_AGENDA] = $agenda->getCoCategoriaAgenda()->getNoCategoriaAgenda();
                $agendaEdicao[NO_EVENTO] = (!empty($agenda->getCoEvento())) ? $agenda->getCoEvento()->getDsDescricao() :
                    'Selecione um evento';
                $agendaEdicao[DS_DESCRICAO] = $agenda->getDsDescricao();
                $agendaEdicao[CO_AGENDA] = $agenda->getCoAgenda();

                echo json_encode($agendaEdicao);
            }
            break;

        case 'capa_livro':
            $id = $_GET['id'];
            $livro = BibliotecaModel::PesquisaUmLivro($id);
            $capa = $livro[0];
            echo json_encode($capa);
            break;

        case 'pesquisa_livro':
            $id = $_GET['id'];
            $livro = BibliotecaModel::PesquisaUmLivro($id);
            echo $livro[0]['no_titulo'];
            break;

        case 'reservar':
            $id = $_GET['id'];
            $co_codigo_livro = BibliotecaModel::PesquisaLivroDisponivel($id);
            $dados['co_codigo_livro'] = $co_codigo_livro[0]['co_codigo_livro'];
            $dados['dt_reserva'] = Valida::DataAtualBanco();
            $dados['st_situacao'] = "R";
            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();
            $dados['co_usuario'] = $user[md5('co_usuario')];
            echo BibliotecaModel::CadastraResevaLivro($dados);
            break;


    }
} // FIM SWITCH
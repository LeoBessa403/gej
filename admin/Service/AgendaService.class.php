<?php

/**
 * AgendaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AgendaService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
        $this->ObjetoModel = New AgendaModel();
    }

    public function SalvaAgenda($result, $files)
    {
        $session = new Session();
        $agendaValidador = new AgendaValidador();
        $validador = $agendaValidador->validarAgenda($result);
        if ($validador[SUCESSO]) {
            /** @var PerfilAgendaService $perfilAgendaService */
            $perfilAgendaService = $this->getService(PERFIL_AGENDA_SERVICE);
            /** @var EnderecoService $enderecoService */
            $enderecoService = $this->getService(ENDERECO_SERVICE);
            /** @var EventoService $eventoService */
            $eventoService = $this->getService(EVENTO_SERVICE);
            /** @var AgendaEventoService $agendaEventoService */
            $agendaEventoService = $this->getService(AGENDA_EVENTO_SERVICE);

            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();

            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];

            $endereco = $enderecoService->getDados($result, EnderecoEntidade::ENTIDADE);
            $endereco[SG_UF] = $result[SG_UF][0];

            $dados[DS_DESCRICAO] = $result[DS_DESCRICAO];
            $dados[CO_USUARIO] = $user[md5(CO_USUARIO)];
            $dados[DT_INICIO] = Valida::DataDB($result[DT_INICIO] . " " . $result['hr_inicio'] . ":00");
            $dados[DT_FIM] = (count($result[DT_FIM]) ? Valida::DataDB($result[DT_FIM] . " " . $result['hr_fim'] . ":00") : null);
            $dados[DS_TITULO] = $result[DS_TITULO];
            $dados[CO_CATEGORIA_AGENDA] = $result[CO_CATEGORIA_AGENDA][0];

            $PDO->beginTransaction();
            $agendaEvento[CO_EVENTO] = (count($result[CO_EVENTO][0])) ? $result[CO_EVENTO][0] : null;

            if (count($result[CO_AGENDA])):
                $coAgenda = $result[CO_AGENDA];
                $coEndereco = $result[CO_ENDERECO];
                $perfilAgendaService->DeletaQuando([CO_AGENDA => $coAgenda]);
                $dados[CO_ENDERECO] = $enderecoService->Salva($endereco, $coEndereco);
                $this->Salva($dados, $coAgenda);
                if (count($agendaEvento[CO_EVENTO])):
                    $agendaEventoService->Salva($agendaEvento, $coAgenda);
                endif;
                $session->setSession(ATUALIZADO, "OK");
            else:
                $dados[CO_ENDERECO] = $enderecoService->Salva($endereco);
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $dados[ST_DIA_TODO] = SimNaoEnum::NAO;
                $coAgenda = $this->Salva($dados);
                if (count($agendaEvento[CO_EVENTO])):
                    $agendaEventoService->Salva($agendaEvento);
                endif;
                $session->setSession(CADASTRADO, "OK");
            endif;

            if ($dados[CO_CATEGORIA_AGENDA] == CategoriaAgendaEnum::EVENTO) {
                $result[CO_AGENDA] = $coAgenda;
                $novo = $eventoService->salvarEvento($result, $files);
            }

            $dadosPerfil[CO_AGENDA] = $coAgenda;
            if (count($result[CO_PERFIL])):
                foreach ($result[CO_PERFIL] as $value):
                    $dadosPerfil[CO_PERFIL] = $value;
                    $retorno[CO_AGENDA] = $perfilAgendaService->Salva($dadosPerfil);
                endforeach;
            endif;

            if ($coAgenda) {
                $session->setSession(MENSAGEM, Mensagens::OK_SALVO);
                $retorno[SUCESSO] = true;
                $PDO->commit();
            } else {
                Notificacoes::geraMensagem(
                    'Não foi possível realizar a ação',
                    TiposMensagemEnum::ERRO
                );
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            }

        } else {
            Notificacoes::geraMensagem(
                $validador[MSG],
                TiposMensagemEnum::ALERTA
            );
            $retorno = $validador;
        }

        return $retorno;
    }

    public function PesquisaAgendaCalendario()
    {
        return $this->ObjetoModel->PesquisaAgendaCalendario();
    }

    public function PesquisaUsuarioAgenda()
    {
        return $this->ObjetoModel->PesquisaUsuarioAgenda();
    }

    public static function PesquisaEventosCombo($res)
    {
        /** @var AgendaService $agendaService */
        $agendaService = new AgendaService();
        $comboEventos = [
            '' => Mensagens::MSG_SEM_ITEM_SELECIONADO
        ];
        $agendas = $agendaService->PesquisaTodos([
            CO_CATEGORIA_AGENDA => CategoriaAgendaEnum::EVENTO
        ]);
        /** @var AgendaEntidade $agenda */
        foreach ($agendas as $agenda) {
            if (!empty($res[CO_AGENDA]) && !empty($agenda->getCoEvento())) {
                if ($res[CO_AGENDA] != $agenda->getCoAgenda()) {
                    $comboEventos[$agenda->getCoEvento()->getCoEvento()] = $agenda->getDsTitulo();
                }
            } elseif (!empty($agenda->getCoEvento())) {
                $comboEventos[$agenda->getCoEvento()->getCoEvento()] = $agenda->getDsTitulo();
            }
        }
        return $comboEventos;
    }

}
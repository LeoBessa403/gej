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
            $dados[DT_FIM] = (!empty($result[DT_FIM]) ? Valida::DataDB($result[DT_FIM] . " " . $result['hr_fim'] . ":00") : null);
            $dados[DS_TITULO] = $result[DS_TITULO];
            $dados[CO_CATEGORIA_AGENDA] = $result[CO_CATEGORIA_AGENDA][0];
            $dados[CO_EVENTO] = (!empty($result[CO_EVENTO][0])) ? $result[CO_EVENTO][0] : 0;

            $PDO->beginTransaction();
            if (!empty($result[CO_AGENDA])):
                $coAgenda = $result[CO_AGENDA];
                $coEndereco = $result[CO_ENDERECO];
                $perfilAgendaService->DeletaQuando([CO_AGENDA => $coAgenda]);
                $dados[CO_ENDERECO] = $enderecoService->Salva($endereco, $coEndereco);
                $this->Salva($dados, $coAgenda);
                $session->setSession(ATUALIZADO, "OK");
            else:
                $dados[CO_ENDERECO] = $enderecoService->Salva($endereco);
                $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $dados[ST_DIA_TODO] = SimNaoEnum::NAO;
                $coAgenda = $this->Salva($dados);
                $session->setSession(CADASTRADO, "OK");
            endif;

            $dadosPerfil[CO_AGENDA] = $coAgenda;
            if (!empty($result[CO_PERFIL])):
                foreach ($result[CO_PERFIL] as $value):
                    $dadosPerfil[CO_PERFIL] = $value;
                    $retorno[CO_AGENDA] = $perfilAgendaService->Salva($dadosPerfil);
                endforeach;
            endif;

            if ($coAgenda) {
                $retorno[MSG] = Mensagens::OK_SALVO;
                $retorno[SUCESSO] = true;
                $PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível cadastrar o Compromisso na Agenda';
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            }

        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }

        return $retorno;
    }

    public static function PesquisaEventosCombo()
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
            $comboEventos[$agenda->getCoEvento()->getCoEvento()] = $agenda->getDsTitulo();
        }
        return $comboEventos;
    }

}
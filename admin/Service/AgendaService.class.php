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

    public function SalvaCompromissoAgenda($result)
    {
        $agendaValidador = new AgendaValidador();
        $validador = $agendaValidador->validarAgenda($result);
        if ($validador[SUCESSO]) {
            /** @var PerfilAgendaService $perfilAgendaService */
            $perfilAgendaService = $this->getService(PERFIL_AGENDA_SERVICE);

            $us = $_SESSION[SESSION_USER];
            $user = $us->getUser();
            $session = new Session();
            /** @var ObjetoPDO PDO */
            $this->PDO = $this->getPDO();
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];

            $dados[DS_DESCRICAO] = $result[DS_DESCRICAO];
            $dados[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $dados[CO_USUARIO] = $user[md5(CO_USUARIO)];
            $dados[ST_DIA_TODO] = SimNaoEnum::NAO;
            $dados[DT_INICIO] = Valida::DataDB($result[DT_INICIO] . " " . $result['hr_inicio'] . ":00");
            $dados[DT_FIM] = (!empty($result[DT_FIM]) ? Valida::DataDB($result[DT_FIM] . " " . $result['hr_fim'] . ":00") : null);
            $dados[DS_TITULO] = $result[DS_TITULO];
            $dados[CO_CATEGORIA_AGENDA] = $result[CO_CATEGORIA_AGENDA][0];
            $dados[CO_EVENTO] = (!empty($result[CO_EVENTO][0])) ? $result[CO_EVENTO][0] : null;

            $this->PDO->beginTransaction();
            if (!empty($result[CO_AGENDA])):
                $coAgenda = $result[CO_AGENDA];
                $perfilAgendaService->DeletaQuando([CO_AGENDA => $coAgenda]);
                $this->Salva($dados, $coAgenda);
                $session->setSession(ATUALIZADO, "OK");
            else:
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
                $this->PDO->commit();
            } else {
                $retorno[MSG] = 'Não foi possível cadastrar o Compromisso na Agenda';
                $retorno[SUCESSO] = false;
                $this->PDO->rollBack();
            }

        } else {
            $retorno = $validador;
        }

        return $retorno;
    }

}
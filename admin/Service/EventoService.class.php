<?php

/**
 * EventoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  EventoService extends AbstractService
{
    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(EventoEntidade::ENTIDADE);
        $this->ObjetoModel = New EventoModel();
    }

    public function salvarEvento($dados, $fotoCapa, $fotos)
    {
        $id = "cadastroEvento";
        /** @var ImagemService $imagemService */
        $imagemService = $this->getService(IMAGEM_SERVICE);
        /** @var ImagemEventoService $imagemEventoService */
        $imagemEventoService = $this->getService(IMAGEM_EVENTO_SERVICE);
        /** @var PDO $PDO */
        $PDO = $this->getPDO();

        unset($dados[$id]);
        $upload = new Upload();

        $PDO->beginTransaction();
        $evento = $dados;
        if ($fotoCapa["name"]):
            $capa = $upload->UploadImagens($fotoCapa, Valida::ValNome($dados[NO_EVENTO]), "Eventos/CapaEventos");
            $capa[DS_CAMINHO] = $capa[0];
            unset($capa[0]);
            $idCapa = $imagemService->Salva($capa);
            $evento[CO_IMAGEM] = $idCapa;
        endif;

        $evento[DS_DESCRICAO] = trim($evento[DS_DESCRICAO]);
        $evento[DT_CADASTRO] = Valida::DataHoraAtualBanco();
        $evento[DT_REALIZADO] = Valida::DataDB($evento[DT_REALIZADO]);


        $idEvento = $this->Salva($evento);
        $session = new Session();
        $session->setSession(CADASTRADO, "OK");

        if ($idEvento):
            $imagemEvento[CO_EVENTO] = $idEvento;
            if ($fotos['name'][0]) {
                $pasta = "Eventos/Evento-" . $idEvento;
                $arquivos = $upload->UploadImagens($fotos, Valida::ValNome($dados[NO_EVENTO]), $pasta);

                foreach ($arquivos as $value) {
                    $imagem[DS_CAMINHO] = $value;
                    $imagemEvento[CO_IMAGEM] = $imagemService->Salva($imagem);
                    $retorno[SUCESSO] = $imagemEventoService->Salva($imagemEvento);
                }
            }

        endif;
        if ($retorno[SUCESSO]) {
            $retorno[MSG] = Mensagens::OK_SALVO;
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $retorno[MSG] = 'Não foi possível cadastrar o Evento';
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }
    }

}
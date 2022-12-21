<?php

/**
 * SuporteService.class [ SEVICE ]
 * @copyright (c) 2020, Leo Bessa
 */
class  SuporteService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(SuporteEntidade::ENTIDADE);
        $this->ObjetoModel = new SuporteModel();
    }


    public function salvaSuporte($dados, $arquivos)
    {
        /** @var HistoricoSuporteService $historicoSuporteService */
        $historicoSuporteService = $this->getService(HISTORICO_SUPORTE_SERVICE);
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $PDO->beginTransaction();

        $suporteValidador = new SuporteValidador();
        /** @var SuporteValidador $validador */
        $validador = $suporteValidador->validarSuporte($dados);
        if ($validador[SUCESSO]) {

            if (!empty($_POST[CO_SUPORTE])):
                $historicoSuporte[CO_SUPORTE] = $dados[CO_SUPORTE];
                $session->setSession(MENSAGEM, ATUALIZADO);
            else:
                $suporte[DT_CADASTRO] = Valida::DataHoraAtualBanco();
                $suporte[DS_ASSUNTO] = trim($dados[DS_ASSUNTO]);
                $suporte[ST_TIPO_ASSUNTO] = $dados[ST_TIPO_ASSUNTO][0];

                $historicoSuporte[CO_SUPORTE] = $this->Salva($suporte);
                $session->setSession(MENSAGEM, CADASTRADO);
            endif;

            $historicoSuporte[DT_CADASTRO] = Valida::DataHoraAtualBanco();
            $historicoSuporte[DS_MENSAGEM] = trim($dados[DS_MENSAGEM]);
            $historicoSuporte[ST_LIDO] = SimNaoEnum::NAO;
            $historicoSuporte[CO_USUARIO] = UsuarioService::getCoUsuarioLogado();

            if ($arquivos[DS_CAMINHO]["tmp_name"]):
                /** @var ImagemService $imagemService */
                $imagemService = $this->getService(IMAGEM_SERVICE);
                $up = new Upload();
                $noPasta = "Suporte";

                $foto = $_FILES[DS_CAMINHO];
                $up->UploadImagem($foto, "suporte-" . $historicoSuporte[CO_SUPORTE], $noPasta);
                $imagem[DS_CAMINHO] = $up->getNameImage();
                $historicoSuporte[CO_IMAGEM] = $imagemService->Salva($imagem);
            endif;

            $retorno[SUCESSO] = $historicoSuporteService->Salva($historicoSuporte);

            if ($retorno[SUCESSO]) {
                $retorno[SUCESSO] = true;
                $PDO->commit();
            } else {
                $session->setSession(MENSAGEM, 'Erro ao Salvar o Suporte');
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

    /**
     * @param $coSuporte
     * @return array
     */
    public function DeletaSuporte($coSuporte)
    {
        /** @var PDO $PDO */
        $PDO = $this->getPDO();
        $session = new Session();
        $PDO->beginTransaction();
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $dados = [
            ST_STATUS => StatusAcessoEnum::INATIVO
        ];
        $retorno[SUCESSO] = $this->Salva($dados, $coSuporte);
        if ($retorno[SUCESSO]) {
            $session->setSession(MENSAGEM, ATUALIZADO);
            $retorno[SUCESSO] = true;
            $PDO->commit();
        } else {
            $session->setSession(MENSAGEM, 'Erro ao Salvar o Suporte');
            $retorno[SUCESSO] = false;
            $PDO->rollBack();
        }
        return $retorno;
    }

    public function PesquisaSuportes($Condicoes)
    {
        return $this->ObjetoModel->PesquisaSuportes($Condicoes);
    }

    public static function PesquisaCountMensagens()
    {
        /** @var SuporteModel $ObjetoModel */
        $ObjetoModel = new SuporteModel();
        $Condicoes = [
            ST_STATUS => (PerfilService::perfilMaster()) ? null : StatusAcessoEnum::ATIVO,
            ST_LIDO => SimNaoEnum::NAO,
            "<>#ths." . CO_USUARIO => UsuarioService::getCoUsuarioLogado()
        ];
        $retorno = $ObjetoModel->PesquisaSuportes($Condicoes);
        return count($retorno);
    }

    public function EnvioWhatsApp($dados, $foto, $alunos)
    {
        /** @var WhatsAppService $WhatsAppService */
        $WhatsAppService = $this->getService(WHATSAPP_SERVICE);
        $naoEnviados = [];
        $msgEnviadas = 0;
        $mensagem = $dados[DS_MENSAGEM];

        $imagem['caminho'] = "";
        if ($foto[DS_CAMINHO]["tmp_name"]):
            $foto = $_FILES[DS_CAMINHO];
            $nome = Valida::ValNome($foto["name"]);
            $pasta = "WhatsApp";
            $up = new Upload();
            $up->UploadImagem($foto, $nome, $pasta);
            $imagem['caminho'] = PASTAUPLOADS . $pasta . '/' . $up->getNameImage();
            $imagem['nome'] = $up->getNameImage();
        endif;

        if ($dados["tp_envio"][0] == 1) {
            /** @var AlunoEntidade $aluno */
            foreach ($alunos as $aluno) {
                /** @var PessoaEntidade $pessoa */
                $pessoa = $aluno->getCoPessoa();
                /** @var ContatoEntidade $contato */
                $contato = $pessoa->getCoContato();
                $strpos = strpos(substr($pessoa->getNoPessoa(), 0, strlen($pessoa->getNoPessoa())), ' ');
                $nome = substr($pessoa->getNoPessoa(), 0, $strpos);
                $mensagem2 = str_replace('<<nome>>', strtoupper($nome), $mensagem);
                $mensagem2 = str_replace('<<email>>', strtolower($contato->getDsEmail()), $mensagem2);

                $retornoWhats = ($imagem['caminho'])
                    ? $WhatsAppService->enviarMensagemArquivo($contato->getNuTel1(), $mensagem2, $imagem)
                    : $WhatsAppService->enviarMensagem($contato->getNuTel1(), $mensagem2);
                $retornoWhats = json_decode($retornoWhats);
                if (!$retornoWhats->sent) {
                    $naoEnviados[] = $pessoa->getNoPessoa() . ' / ' . $contato->getNuTel1() . '<br>';
                } else {
                    $msgEnviadas++;
                }
            }
        } elseif ($dados["tp_envio"][0] == 2) {
            // Pessoas Específicas
            foreach ($dados["nu_envio"] as $aluno) {
                $dadosAluno = explode('==;', $aluno);
                $strpos = strpos(substr($dadosAluno[0], 0, strlen($dadosAluno[0])), ' ');
                $nome = substr($dadosAluno[0], 0, $strpos);
                $mensagem2 = str_replace('<<nome>>', strtoupper(trim($nome)), $mensagem);
                $mensagem2 = str_replace('<<email>>', strtolower($dadosAluno[2]), $mensagem2);

                $retornoWhats = ($imagem['caminho'])
                    ? $WhatsAppService->enviarMensagemArquivo($dadosAluno[1], $mensagem2, $imagem)
                    : $WhatsAppService->enviarMensagem($dadosAluno[1], $mensagem2);
                $retornoWhats = json_decode($retornoWhats);
                if (!$retornoWhats->sent) {
                    $naoEnviados[] = $dadosAluno[0] . ' / ' . $dadosAluno[1] . '<br>';
                } else {
                    $msgEnviadas++;
                }
            }
        } elseif ($dados["tp_envio"][0] == 3) {
            $numeros = explode(',', $dados["nu_tel1"]);
            // Vários Números
            foreach ($numeros as $numero) {
                $numero = str_replace([',', '.', '(', ')', '-', ' ', '+'], '', $numero);
                if (is_numeric($numero)) {
                    $retornoWhats = ($imagem['caminho'])
                        ? $WhatsAppService->enviarMensagemArquivo($numero, $mensagem, $imagem, false)
                        : $WhatsAppService->enviarMensagem($numero, $mensagem, false);
                    $retornoWhats = json_decode($retornoWhats);
                    if (!$retornoWhats->sent) {
                        $naoEnviados[] = $numero . '<br>';
                    } else {
                        $msgEnviadas++;
                    }
                }
            }
        }
        $msgAux = '';
        if (!empty($naoEnviados)) {
            $msgAux = '<br>Não foi possível o envio para: ' . implode(', ', $naoEnviados);
        }
        Notificacoes::geraMensagem(
            'Foram Enviadas ' . $msgEnviadas . ' Mensagens com Sucesso!' . $msgAux,
            TiposMensagemEnum::SUCESSO);
    }
}
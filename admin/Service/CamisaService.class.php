<?php

/**
 * CamisaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CamisaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(CamisaEntidade::ENTIDADE);
        $this->ObjetoModel = New CamisaModel();
    }

    public function salvaCamisa($result, $foto)
    {
        $session = new Session();
        $camisaValidador = new CamisaValidador();
        /** @var CamisaValidador $validador */
        $validador = $camisaValidador->validarCamisa($result);
        if ($validador[SUCESSO]) {
            /** @var PDO $PDO */
            $PDO = $this->getPDO();
            /** @var CamisaCorCamisaService $camisaCorCamisaService */
            $camisaCorCamisaService = $this->getService(CAMISA_COR_CAMISA_SERVICE);
            /** @var ImagemService $imagemService */
            $imagemService = $this->getService(IMAGEM_SERVICE);
            $retorno = [
                SUCESSO => false,
                MSG => null
            ];
            $coCorCamisa = null;
            $camisa[NO_CAMISA] = trim($result[NO_CAMISA]);
            $camisa[NU_VALOR_CUSTO] = Valida::FormataMoedaBanco($result[NU_VALOR_CUSTO]);
            $camisa[NU_VALOR_VENDA] = Valida::FormataMoedaBanco($result[NU_VALOR_VENDA]);

            $imagem[DS_CAMINHO] = "";
            if ($foto[DS_CAMINHO]["tmp_name"]):
                $foto = $_FILES[DS_CAMINHO];
                $nome = Valida::ValNome($camisa[NO_CAMISA]);
                $up = new Upload();
                $up->UploadImagens($foto, $nome, "Camisa");
                $imagem[DS_CAMINHO] = $up->getNameImage();
                $camisa[CO_IMAGEM] = $imagemService->Salva($imagem);
            endif;
//            debug($imagem);
            $PDO->beginTransaction();
            if (empty($result[CO_CAMISA])) {
                $dadosCor[CO_CAMISA] = $this->Salva($camisa);
            } else {
                $coCamisa = $result[CO_CAMISA];
                $dadosCor[CO_CAMISA] = $coCamisa;
                $this->Salva($camisa, $coCamisa);
                $camisaCorCamisaService->DeletaQuando([
                    CO_CAMISA => $coCamisa
                ]);
            }

            if (count($result[CO_COR_CAMISA])):
                foreach ($result[CO_COR_CAMISA] as $value):
                    $dadosCor[CO_COR_CAMISA] = $value;
                    $coCorCamisa = $camisaCorCamisaService->Salva($dadosCor);
                endforeach;
            endif;

            if ($coCorCamisa):
                $retorno[SUCESSO] = true;
                $PDO->commit();
            else:
                $session->setSession(MENSAGEM, 'Não foi possível salvar o Fluxo de Caixa');
                $retorno[SUCESSO] = false;
                $PDO->rollBack();
            endif;
        } else {
            $session->setSession(MENSAGEM, $validador[MSG]);
            $retorno = $validador;
        }
        return $retorno;
    }


}
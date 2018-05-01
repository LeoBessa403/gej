<?php

/**
 * FluxoCaixaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  FluxoCaixaService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(FluxoCaixaEntidade::ENTIDADE);
        $this->ObjetoModel = New FluxoCaixaModel();
    }

    public function salvaFluxoCaixa($result)
    {
        $retorno = [
            SUCESSO => false,
            MSG => null
        ];
        $session = new Session();

        $dados[DS_DESCRICAO] = trim($result[DS_DESCRICAO]);
        if (!empty($result[TP_FLUXO])){
            $dados[TP_FLUXO] = FluxoCaixaEnum::FLUXO_ENTRADA;
        }else{
            $dados[TP_FLUXO] = FluxoCaixaEnum::FLUXO_SAIDA;
        }
        $dados[NU_VALOR] =  Valida::FormataMoedaBanco($result[NU_VALOR]);
        $dados[DT_REALIZADO] =  Valida::DataDB($result[DT_REALIZADO]);
        $dados[DT_VENCIMENTO] =  Valida::DataDB($result[DT_VENCIMENTO]);
        $dados[ST_PAGAMENTO] =  $result[ST_PAGAMENTO][0];

        if (!empty($result[CO_FLUXO_CAIXA])):
            $coFluxoCaixa = $result[CO_FLUXO_CAIXA];
            $this->Salva($dados, $coFluxoCaixa);
            if ($coFluxoCaixa):
                $retorno[MSG] = Mensagens::OK_ATUALIZADO;
                $retorno[SUCESSO] = true;
                $session->setSession(ATUALIZADO, "OK");
            endif;
        else:
            $dados[DT_CADASTRO] =  Valida::DataHoraAtualBanco();
            $coFluxoCaixa = $this->Salva($dados);
            if ($coFluxoCaixa):
                $retorno[MSG] = Mensagens::OK_SALVO;
                $retorno[SUCESSO] = true;
                $session->setSession(CADASTRADO, "OK");
            endif;
        endif;
        return $retorno;
    }

}
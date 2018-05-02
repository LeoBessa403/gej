<?php

/**
 * AdministrativoService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AdministrativoService extends AbstractService
{

    private $ObjetoModel;


    public function __construct()
    {
        parent::__construct(AdministrativoEntidade::ENTIDADE);
        $this->ObjetoModel = New AdministrativoModel();
    }

    public function atualizaFluxoCaixa($valor, $operacao)
    {
        /** @var AdministrativoEntidade $valor */
        $fluxo = $this->PesquisaUmRegistro(1);
        if ($operacao == FluxoCaixaEnum::FLUXO_ENTRADA){
            $dados[NU_FUNDO_CAIXA] =  $fluxo->getNuFundoCaixa() + $valor;
        }else{
            $dados[NU_FUNDO_CAIXA] =  $fluxo->getNuFundoCaixa() - $valor;
        }
        $this->Salva($dados,1);
    }

}
<?php

/**
 * AcessoModel.class [ MODEL ]
 * @copyright (c) 2017, Leo Bessa
 */
class  AcessoModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(AcessoEntidade::ENTIDADE);
    }

    public function finalizaAcessos()
    {
        $pesquisa = new Pesquisa();
        $where = "where tp_situacao = 'A' and dt_fim_acesso < '".Valida::DataHoraAtualBanco()."'";
        $pesquisa->Pesquisar(AcessoEntidade::TABELA, $where);
        /** @var AcessoEntidade $acesso */
        foreach ($pesquisa->getResult() as $acesso){
            $terminaAcesso[TP_SITUACAO] = StatusAcessoEnum::FINALIZADO;
            $this->Salva($terminaAcesso, $acesso['co_acesso']);
        }
    }

}
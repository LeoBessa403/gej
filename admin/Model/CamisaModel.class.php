<?php

/**
 * CamisaModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  CamisaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(CamisaEntidade::ENTIDADE);
    }

    /**
     * @param $coCamisa
     * @return array
     */
    public static function getDsCaminhoFotoCamisa($coCamisa)
    {
        $tabela = CamisaEntidade::TABELA . " prod" .
            " inner join " . ImagemEntidade::TABELA . " img" .
            " on prod." . ImagemEntidade::CHAVE . " = img." . ImagemEntidade::CHAVE;
        $campos = "img." . DS_CAMINHO . ' AS caminho';
        $pesquisa = new Pesquisa();
        $where = "where " . CamisaEntidade::CHAVE . " = " . $coCamisa;
        $pesquisa->Pesquisar($tabela, $where, null, $campos);
        return $pesquisa->getResult();
    }
}
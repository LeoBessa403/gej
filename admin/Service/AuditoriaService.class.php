<?php

/**
 * AuditoriaService.class [ SEVICE ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AuditoriaService extends AbstractService
{

    private $ObjetoModel;

    public function __construct()
    {
        parent::__construct(AuditoriaEntidade::ENTIDADE);
        $this->ObjetoModel = New AuditoriaModel();
    }

    public function PesquisaAvancada($Condicoes)
    {
        return $this->ObjetoModel->PesquisaAvancada($Condicoes);
    }

    public static function PesquisaTabelasCombo()
    {
        $conn = new ObjetoPDO();
        $conn->inicializarConexao();

        $result = mysql_query('SHOW TABLES');
        $tabelas = [];
        if ($result) {
            while ($row = mysql_fetch_row($result)) {
                $Entidade = str_replace('tb_', '', $row[0]);
                $Entidade = str_replace('_', ' ', $Entidade);
                $Entidade = ucwords($Entidade);
                $tabelas[strtoupper($row[0])] = $Entidade;
            }
        }
        return $tabelas;
    }
}
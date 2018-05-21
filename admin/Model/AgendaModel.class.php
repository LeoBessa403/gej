<?php

/**
 * AgendaModel.class [ MODEL ]
 * @copyright (c) 2018, Leo Bessa
 */
class  AgendaModel extends AbstractModel
{

    public function __construct()
    {
        parent::__construct(AgendaEntidade::ENTIDADE);
    }

    public function PesquisaAgendaCalendario()
    {
        $tabela = AgendaEntidade::TABELA . " age" .
            " inner join " . CategoriaAgendaEntidade::TABELA . " cat" .
            " on age." . CategoriaAgendaEntidade::CHAVE . " = cat." . CategoriaAgendaEntidade::CHAVE;

        $campos =  CO_AGENDA . ", " . DS_TITULO . ", " . DT_INICIO . ", " . DT_FIM . ", " . ST_DIA_TODO . ", " . DS_COR;
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar($tabela, null, null, $campos);
        return $pesquisa->getResult();
    }

    public function PesquisaUsuarioAgenda()
    {
        $tabela = UsuarioEntidade::TABELA . " usu" .
            " inner join " . PessoaEntidade::TABELA . " pes" .
            " on usu." . PessoaEntidade::CHAVE . " = pes." . PessoaEntidade::CHAVE;

        $campos = CO_USUARIO . ", " . NO_PESSOA . ", " . DT_NASCIMENTO;
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar($tabela, null, null, $campos);
        return $pesquisa->getResult();
    }
}
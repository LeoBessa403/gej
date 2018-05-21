<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class UsuarioEntidadeExtends extends AbstractEntidade
{
    private $co_comissao_evento;
    private $co_agenda;

    /**
     * @return mixed
     */
    public function getCoComissaoEvento()
    {
        return $this->co_comissao_evento;
    }

    /**
     * @param mixed $co_comissao_evento
     */
    public function setCoComissaoEvento($co_comissao_evento)
    {
        $this->co_comissao_evento = $co_comissao_evento;
    }

    /**
     * @return mixed
     */
    public function getCoAgenda()
    {
        return $this->co_agenda;
    }

    /**
     * @param mixed $co_agenda
     */
    public function setCoAgenda($co_agenda)
    {
        $this->co_agenda = $co_agenda;
    }

}
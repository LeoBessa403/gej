<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class EnderecoEntidadeExtends extends AbstractEntidade
{
    private $co_agenda;

    /**
     * @return AgendaEntidade mixed
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
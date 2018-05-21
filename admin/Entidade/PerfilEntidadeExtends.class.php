<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class PerfilEntidadeExtends extends AbstractEntidade
{
    private $co_perfil_agenda;

    /**
     * @return mixed
     */
    public function getCoPerfilAgenda()
    {
        return $this->co_perfil_agenda;
    }

    /**
     * @param mixed $co_perfil_agenda
     */
    public function setCoPerfilAgenda($co_perfil_agenda)
    {
        $this->co_perfil_agenda = $co_perfil_agenda;
    }

}
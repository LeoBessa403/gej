<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class PessoaEntidadeExtends extends AbstractEntidade
{
    private $co_inscricao;
    private $co_membro;

    /**
     * @return InscricaoEntidade $co_inscricao
     */
    public function getCoInscricao()
    {
        return $this->co_inscricao;
    }

    /**
     * @param $co_inscricao
     * @return mixed
     */
    public function setCoInscricao($co_inscricao)
    {
        return $this->co_inscricao = $co_inscricao;
    }

    /**
     * @return MembroEntidade $co_membro
     */
    public function getCoMembro()
    {
        return $this->co_membro;
    }

    /**
     * @param $co_membro
     * @return mixed
     */
    public function setCoMembro($co_membro)
    {
        return $this->co_membro = $co_membro;
    }


}
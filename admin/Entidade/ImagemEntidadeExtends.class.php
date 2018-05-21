<?php

/**
 * Pessoa.Entidade extends [ ENTIDADE ]
 * @copyright (c) 2017, Leo Bessa
 */

class ImagemEntidadeExtends extends AbstractEntidade
{
    private $co_inscricao;
    private $co_imagem_evento;

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
     * @return mixed
     */
    public function getCoImagemEvento()
    {
        return $this->co_imagem_evento;
    }

    /**
     * @param mixed $co_imagem_evento
     */
    public function setCoImagemEvento($co_imagem_evento)
    {
        $this->co_imagem_evento = $co_imagem_evento;
    }


}
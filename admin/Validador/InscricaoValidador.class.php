<?php

/**
 * AcessoService.class [ SEVICE ]
 * @copyright (c) 2017, Leo Bessa
 */
class  InscricaoValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => []
    ];

    public function validarInscricao($dados, $arquivo)
    {
        $validadorCpf = $this->validaCampoMascara($dados[NU_CPF], AbstractValidador::VALIDACAO_CPF);
        if (!$validadorCpf) {
            $this->retorno[SUCESSO] = false;
            $this->retorno[MSG][] = 'CPF obrigatório';
        }
    }
}
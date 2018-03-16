<?php

/**
     * AgendaValidador [ VALIDATOR ]
 * @copyright (c) 2017, Leo Bessa
 */
class  AgendaValidador extends AbstractValidador
{
    private $retorno = [
        SUCESSO => true,
        MSG => [],
        DADOS => []
    ];

    public function validarAgenda($dados)
    {
        $this->retorno[DADOS][] = $this->validaCampoObrigatorioDescricao(
            $dados[DS_TITULO], 5, 'Título'
        );
        $this->retorno[DADOS][] = $this->validaCampoSelctObrigatorio(
            $dados[CO_PERFIL], 'Participantes'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoObrigatorioValido(
            $dados[DT_INICIO],AbstractValidador::VALIDACAO_DATA, 'Daata de Início'
        );
        $this->retorno[DADOS][] = $this->ValidaCampoValido(
            $dados[DT_FIM],AbstractValidador::VALIDACAO_DATA, 'Daata de Termino'
        );
        $this->retorno[DADOS][] = $this->validaCampoObrigatorioDescricao(
            $dados[DS_DESCRICAO], 10, 'Descrição da Eventualidade'
        );

        return $this->montaRetorno($this->retorno);
    }
}
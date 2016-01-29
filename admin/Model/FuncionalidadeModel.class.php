<?php

class FuncionalidadeModel{
    
    public static function CadastraFuncionalidade(array $dados){
        $cadastro = new Cadastra();
        $cadastro->Cadastrar(Constantes::FUNCIONALIDADE_TABELA, $dados);
        return $cadastro->getUltimoIdInserido();
    }
    
     public static function AtualizaFuncionalidade(array $dados,$id){
        $atualiza = new Atualiza();
        $atualiza->Atualizar(Constantes::FUNCIONALIDADE_TABELA, $dados, "where ".Constantes::FUNCIONALIDADE_CHAVE_PRIMARIA." = :id", "id={$id}");
        return $atualiza->getResult();
    }
    
    public static function PesquisaUmFuncionalidade($co_funcionalidade){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::FUNCIONALIDADE_TABELA,"where ".Constantes::FUNCIONALIDADE_CHAVE_PRIMARIA." = :funcionalidade", "funcionalidade={$co_funcionalidade}");
        return $pesquisa->getResult();
    }
    
    public static function PesquisaPerfisFuncionalidade($co_funcionalidade){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::PERFIL_FUNCIONALIDADE_TABELA,"where ".Constantes::FUNCIONALIDADE_CHAVE_PRIMARIA." = :funcionalidade", "funcionalidade={$co_funcionalidade}");
        return $pesquisa->getResult();
    }
    
    public static function PesquisaFuncionalidade(){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::FUNCIONALIDADE_TABELA);
        return $pesquisa->getResult();
    }
    
    public static function PesquisaFuncionalidadesPerfis($perfis){
        $perfis = implode(",", $perfis);
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::PERFIL_FUNCIONALIDADE_TABELA,"where ".Constantes::PERFIL_CHAVE_PRIMARIA." in ({$perfis})");
        return $pesquisa->getResult();
    }
    
    public static function DeletaFuncionalidade($co_funcionalidade){
        self::DeletaPerfisFuncionalidade($co_funcionalidade);
        $deleta = new Deleta();
        $deleta->Deletar(Constantes::FUNCIONALIDADE_TABELA, "where ".Constantes::FUNCIONALIDADE_CHAVE_PRIMARIA." = :funcionalidade", "funcionalidade={$co_funcionalidade}");
        return $deleta->getResult();
    }
    
    public static function DeletaPerfisFuncionalidade($co_funcionalidade){
        $deleta = new Deleta();
        $deleta->Deletar(Constantes::PERFIL_FUNCIONALIDADE_TABELA, "where ".Constantes::FUNCIONALIDADE_CHAVE_PRIMARIA." = :funcionalidade", "funcionalidade={$co_funcionalidade}");
        return $deleta->getResult();
    }
    
}
<?php

class PerfilModel{
    
    public static function CadastraPerfil(array $dados){
        $cadastro = new Cadastra();
        $cadastro->Cadastrar(Constantes::PERFIL_TABELA, $dados);
        return $cadastro->getUltimoIdInserido();
    }
    
    public static function CadastraFuncionalidadesPerfil(array $dados){
        $cadastro = new Cadastra();
        $cadastro->Cadastrar(Constantes::PERFIL_FUNCIONALIDADE_TABELA, $dados);
        return $cadastro->getUltimoIdInserido();
    }
    
     public static function AtualizaPerfil(array $dados,$id){
        $atualiza = new Atualiza();
        $atualiza->Atualizar(Constantes::PERFIL_TABELA, $dados, "where ".Constantes::PERFIL_CHAVE_PRIMARIA." = :id", "id={$id}");
        return $atualiza->getResult();
    }
    
    public static function PesquisaUmPerfil($co_perfil){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::PERFIL_TABELA,"where ".Constantes::PERFIL_CHAVE_PRIMARIA." = :perfil", "perfil={$co_perfil}");
        return $pesquisa->getResult();
    }
    
    public static function PesquisaFuncionalidadesPerfil($co_perfil){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::PERFIL_FUNCIONALIDADE_TABELA,"where ".Constantes::PERFIL_CHAVE_PRIMARIA." = :perfil", "perfil={$co_perfil}");
        return $pesquisa->getResult();
    }
    
    public static function PesquisaPerfil(){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(Constantes::PERFIL_TABELA);
        return $pesquisa->getResult();
    }
    
    public static function DeletaPerfil($co_perfil){
        self::DeletaFuncionalidadesPerfil($co_perfil);
        $deleta = new Deleta();
        $deleta->Deletar(Constantes::PERFIL_TABELA, "where ".Constantes::PERFIL_CHAVE_PRIMARIA." = :perfil", "perfil={$co_perfil}");
        return $deleta->getResult();
    }
    
    public static function DeletaFuncionalidadesPerfil($co_perfil){
        $deleta = new Deleta();
        $deleta->Deletar(Constantes::PERFIL_FUNCIONALIDADE_TABELA, "where ".Constantes::PERFIL_CHAVE_PRIMARIA." = :perfil", "perfil={$co_perfil}");
        return $deleta->getResult();
    }
}
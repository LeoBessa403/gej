<?php

class CadastroRetiroModel{
    
    public static function CadastraDados(array $dados){
        $cadastro = new Cadastra();
        $cadastro->Cadastrar(MEMBRO_RETIRO_TABELA, $dados);
        return $cadastro->getUltimoIdInserido();
    }
    
    public static function PesquisaMembroJaCadastrado($dados){
        $pesquisa = new Pesquisa();
        $pesquisa->Pesquisar(MEMBRO_RETIRO_TABELA,"where no_membro = :nome and dt_nascimento = :nascimento and co_evento = :retiro","nome={$dados['no_membro']}&nascimento={$dados['dt_nascimento']}&retiro={$dados['co_evento']}");
        return $pesquisa->getResult();
    }
    
//    public static function AtualizaDados(array $dados,$id){
//        $atualiza = new Atualiza();
//        $atualiza->Atualizar(DADOS_TABELA, $dados, "where ".DADOS_CHAVE_PRIMARIA." = :id", "id={$id}");
//        return $atualiza->getResult();
//    }
    
    
}
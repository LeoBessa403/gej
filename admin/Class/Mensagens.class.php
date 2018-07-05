<?php

/**
 * Check.class [ HELPER ]
 * Classe responável por manipular e validade dados do sistema!
 *
 * @copyright (c) 2014, Leo Bessa
 */
class Mensagens
{

    const OK_SALVO = "Cadastro Realizado Com Sucesso!";
    const OK_ATUALIZADO = "Cadastro Atualizado Com Sucesso!";
    const OK_ENVIO_EMAIL = "Email(s) Enviado(s) Com Sucesso!";
    const USUARIO_CADASTRADO_SUCESSO = "Usuário Cadastro Com Sucesso!</br>
                                        <b>Favor aguardar a ativação do seu cadastro.</b>";

    const MEMBRO_JA_CADASTRADO = "Não Foi possível o cadastro! Membro Já cadastrado.";
    const INSCRICOES_ENCERRADAS = "As INscrições estão encerradas, aguarde nosso próximo evento.";
    const USUARIO_JA_CADASTRADO = "Não é possível o cadastro! Usuário Já cadastrado.";
    const OK_SALVO_MEMBRO_RETIRO_CARNAVAL = "Cadastro Realizado com Sucesso! </br><b>Porem a garantia da sua 
            vaga somente mediante a PAGAMENTO da taxa de InscriÇÃo. Selecione a forma que pretende pagar.</b>";
    const OK_SALVO_INSCRICAO = "Cadastro Realizado com Sucesso! Aguardando a confirmaÇÃo do Pagamento.";
    const MSG_ERROS_CAMPOS = "O(s) Campo(s) <b>%s</b> , favor preencher corretamente.";
    const MSG_SEM_ITEM_SELECIONADO = "Nenhum item selecionado";
    const MSG_VALOR_PAGA_ACIMA = "O valor pago é maior que o valor da inscrição, favor corrigir com o valor correto.";
    const INSCRICAO_JA_CADASTRADA = "Já existe uma inscrição desse CPF para esse evento.";

    public $MSG01 = "Esse Perfil esta vinculado a um Usuário ou Funcionalidade.";

    // MENSAGENS DO WHATSAPP
    const ZAP01 = "Gostaria de saber mais sobre o GEJ!";
    const ZAP02 = "Vi no site e gostaria de fazer um orçamento!";
    const ZAP03 = "Estou com dúvidas sobre minha Inscrição!";
    const ZAP04 = "Estou com dúvidas sobre o Pagamento!";
    const ZAP05 = "Segue o comprovante do pagamento do Abastecimento Espirirual!";
    const ZAPAVIVAGEJ = "Óla, quero te fazer um super convite!";

}

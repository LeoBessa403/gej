<?php

function servidor_inicial()
{
    if ($_SERVER['HTTP_HOST'] == 'localhost') {
        $config = array(
            'HOME' => 'https://gejdombosco.com.br/',
            'HOST' => 'localhost',
            'USER' => 'gejdo247_gej',
            'PASS' => 'Admin101*',
            'DBSA' => 'gejdo247_gej',
            'DEBUG' => false
        );
    } else {
        $config = array(
            'HOME' => 'http://localhost/gej/',
            'HOST' => 'localhost',
            'USER' => 'root',
            'PASS' => '',
            'DBSA' => 'gej_bd',
            'DEBUG' => true
        );
    }

    define('HOME', $config['HOME']);
    define('HOST', $config['HOST']);
    define('USER', $config['USER']);
    define('PASS', $config['PASS']);
    define('DBSA', $config['DBSA']);
    define('DEBUG', $config['DEBUG']);


    //////////////////////////////////////////////
    // ******* CONFIGURAÇÕES DO SITE ********** //
    //////////////////////////////////////////////

    // Título do Site
    define('DESC', 'WEB GEJ');
    // Tabela de pesquisa de usuário para validação
    define('TABLE_USER', 'tb_usuario');
    // Campo de login na Tabela de pesquisa de usuário para validação
    define('CAMPO_USER', 'ds_login');
    // Campo da senha na Tabela de pesquisa de usuário para validação
    define('CAMPO_PASS', 'ds_code');
    // Campo do ID (Chave Primaria) na Tabela de pesquisa de usuário para validação
    define('CAMPO_ID', 'co_usuario');
    // Campo do Perfil na Tabela de pesquisa de usuário para validação dos perfis 
    // (Ex.: cadastrante, administrador, pesquisador) Sepmre separados por (, )
    define('CAMPO_PERFIL', 'ds_perfil');
    // Atribui o nome da Sessão do usuario Logado no sitema
    define('SESSION_USER', 'user_gej');
    // Tempo de Inativadade Máximo em Minutos, aceito para deslogar do Sistema.
    define('INATIVO', 20);
    // A frequencia em dias para realizar o BACKUP NO BANCO DE DADOS
    define('BACKUP', 2);
    // TAMANHO PADRÃO DO WIDTH DAS IAMGENS A SEREM CARREGADAS
    define('TAMANHO', 600);
    // PASTA DE ARMAZENAMENTO DE UPLOADS
    define('PASTAUPLOADS', 'uploads/');
    // TABELA PARA ARMAZENAR OS DADOS PARA AUDITORIA
    define('TABELA_AUDITORIA', AuditoriaEntidade::TABELA);
    // NÚMERO PADRÃO DE ENVIO DO WHATSAPP
    define('WHATSAPP', '5561993259985');


    //////////////////////////////////////////////
    // ******* CONFIGURAÇÕES DE EMAIL ********** //
    //////////////////////////////////////////////

    define('HOST_EMAIL', 'mail.gejdombosco.com.br');
    define('PORTA_EMAIL', 587);
    define('USER_EMAIL', 'contato@gejdombosco.com.br');
    define('PASS_EMAIL', 'Admin101**');

    //////////////////////////////////////////////
    // *********** GOOGLE ANALITCS  *********** //
    //////////////////////////////////////////////

    define('ID_ANALITCS', 'UA-71215942-1');


    //////////////////////////////////////////////
    // ***** SERVIDOR DE LOCALIZAÇÃO DE IP **** //
    //////////////////////////////////////////////

    define('IP_LOCALIZACAO', 'http://ip-api.com/php/');

    include_once('Class/Constantes.class.php');

}



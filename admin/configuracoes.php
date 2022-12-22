<?php

function servidor_inicial()
{
    if ($_SERVER['HTTP_HOST'] == 'localhost') {
        $config = array(
            'HOME' => 'http://localhost/Retiro/',
            'HOST' => 'localhost',
            'USER' => 'root',
            'PASS' => '',
            'DBSA' => 'retiro10',
            'DEBUG' => true,
            'PROD' => false,
            'BANCO' => 1, // 1 = mysql, 2 = postgres
            'AMBI' => 1, // 1 = Desenvolvimento, 2 = Teste , 3 = Produção
            'TOKEN_PAGSEGURO' => "5FDD35645CC1412296CE57A3542E48D0",
            'URL_PAGSEGURO' =>
                "https://ws.sandbox.pagseguro.uol.com.br/v2/",
            'JS_PAGSEGURO' =>
                "sandbox.pagseguro.js",
        );
    } else {
        $config = array(
            'HOME' => 'https://retiro.ccaug.com.br/',
            'HOST' => 'localhost',
            'USER' => 'sistem25_retiro',
            'PASS' => 'Admin101*/',
            'DBSA' => 'sistem25_retiro',
            'DEBUG' => false,
            'PROD' => true,
            'BANCO' => 1, // 1 = mysql, 2 = postgres
            'AMBI' => 3, // 1 = Desenvolvimento, 2 = Teste , 3 = Produção
             'TOKEN_PAGSEGURO' => "f1de244c-dce4-44a0-a367-f7198e9b11824709d9a54c27bbeea2764b02b026081347be-024c-4b90-af8f-1da48a1cff6a",
                'URL_PAGSEGURO' =>
                    "https://ws.pagseguro.uol.com.br/v2/",
                'JS_PAGSEGURO' =>
                    "pagseguro.js",
        );
    }

    define('HOME', $config['HOME']);
    define('HOST', $config['HOST']);
    define('USER', $config['USER']);
    define('PASS', $config['PASS']);
    define('DBSA', $config['DBSA']);
    define('DEBUG', $config['DEBUG']);
    define('PROD', $config['PROD']);
    define('BANCO', $config['BANCO']);
    define('AMBI', $config['AMBI']);
    define('CO_USUARIO_PADRAO', 1);
    define('NO_USUARIO_PADRAO', 'Usuário Web Gej');

    define("TOKEN_PAGSEGURO", $config['TOKEN_PAGSEGURO']);
    define("URL_PAGSEGURO", $config['URL_PAGSEGURO']);
    define("JS_PAGSEGURO", HOME . 'library/js/' . $config['JS_PAGSEGURO']);
    define("EMAIL_PAGSEGURO", "leodjx@hotmail.com");
    define("EMAIL_LOJA", "leodjx@hotmail.com");
    define("MOEDA_PAGAMENTO", "BRL");
    define("URL_NOTIFICACAO", HOME . "library/NotificacaoPagSeguro.php");

}

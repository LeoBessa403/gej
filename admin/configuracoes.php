<?php

function servidor_inicial()
{
    if ($_SERVER['HTTP_HOST'] == 'localhost') {
        $config = array(
            'HOME' => 'http://localhost/gej/',
            'HOST' => 'localhost',
            'USER' => 'root',
            'PASS' => '',
            'DBSA' => 'gejdo247_gej',
            'DEBUG' => true,
            'PROD' => false
        );
    } else {
        $config = array(
            'HOME' => 'https://gejdombosco.com.br/',
            'HOST' => 'localhost',
            'USER' => 'gejdo247_gej',
            'PASS' => 'Admin101*',
            'DBSA' => 'gejdo247_gej',
            'DEBUG' => false,
            'PROD' => true
        );
    }

    define('HOME', $config['HOME']);
    define('HOST', $config['HOST']);
    define('USER', $config['USER']);
    define('PASS', $config['PASS']);
    define('DBSA', $config['DBSA']);
    define('DEBUG', $config['DEBUG']);
    define('PROD', $config['PROD']);
    define('CO_USUARIO_PADRAO', 1);
    define('NO_USUARIO_PADRAO', 'Usuário Web Gej');

}

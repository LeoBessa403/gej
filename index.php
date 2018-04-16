<?php
    require_once 'library/Config.inc.php';
    $link = $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI'];
    $link = str_replace(str_replace('http://','',HOME),'',$link);

    $url = (isset($link) && $link != "" ? $link : "web");

    $url = explode("/", $url);

    if($url[0] == "admin"):
        include './admin/sistema.php';
    else:
        include './web/web.php';
    endif;
?>
<?php
    require_once 'library/Config.inc.php';
    $link = UrlAmigavel::getLink();

    $url = (isset($link) && $link != "" ? $link : "web");

    $url = explode("/", $url);

    if($url[0] == "admin"):
        include './admin/sistema.php';
    else:
        include './web/web.php';
    endif;
?>
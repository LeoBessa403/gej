<?php
require_once 'library/Config.inc.php';
$link = UrlAmigavel::getLink();
$url = (isset($link) && $link != "") ? $link : SITE;
$url = explode("/", $url);

if ($url[0] == SITE && TEM_SITE):
    include './' . SITE . '/web.php';
else:
    include './' . ADMIN . '/sistema.php';
endif;

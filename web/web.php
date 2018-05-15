<?php
/** @var UrlAmigavel $url */
$url = new UrlAmigavel();
/** @var Seo $seo */
$seo = new Seo($url);
//Gera SITEMAP (1X / dia)
$SiteMapCheck = fopen('sitemap.txt', "a+");
$SiteMapCheckDate = fgets($SiteMapCheck);
if ($SiteMapCheckDate != date('Y-m-d') && PROD):
    $SiteMapCheck = fopen('sitemap.txt', "w");
    fwrite($SiteMapCheck, date('Y-m-d'));
    fclose($SiteMapCheck);

    $SiteMap = new Sitemap;
    $SiteMap->exeSitemap();
endif;
?>
?>
<!DOCTYPE html>
<html lang="pt-br" itemscope itemtype="https://schema.org/WebSite">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0,user-scalable=0">

    <title><?= $seo->getTitulo(); ?></title>
    <meta name="description" content="<?= $seo->getDescricao(); ?>"/>
    <meta name="robots" content="index, follow"/>
    <meta name="Abstract" content="<?= DESC; ?>"/>
    <meta name="author" content="Leonardo Bessa"/>
    <meta name="copyright" content="<?= DESC; ?>"/>
    <meta name="language" content="pt-BR"/>
    <meta name="country" content="BRA"/>
    <meta name="currency" content="R$"/>

    <link rel="base" href="<?= HOME; ?>"/>
    <link rel="canonical" href="<?= $seo->getUrl(); ?>"/>

    <meta itemprop="name" content="<?= $seo->getTitulo(); ?>"/>
    <meta itemprop="description" content="<?= $seo->getDescricao(); ?>"/>
    <meta itemprop="image" content="<?= $seo->getImagem() ?>"/>
    <meta itemprop="url" content="<?= $seo->getUrl(); ?>"/>

    <meta property="og:type" content="article"/>
    <meta property="og:title" content="<?= $seo->getTitulo(); ?>"/>
    <meta property="og:description" content="<?= $seo->getDescricao(); ?>"/>
    <meta property="og:image" content="<?= $seo->getImagem(); ?>"/>
    <meta property="og:url" content="<?= $seo->getUrl(); ?>"/>
    <meta property="og:site_name" content="<?= DESC; ?>"/>
    <meta property="og:locale" content="pt_BR"/>

    <meta property="twitter:domain" content="<?= HOME; ?>"/>
    <meta property="twitter:title" content="<?= $seo->getTitulo(); ?>"/>
    <meta property="twitter:description" content="<?= $seo->getDescricao(); ?>"/>
    <meta property="twitter:image" content="<?= $seo->getImagem(); ?>"/>
    <meta property="twitter:url" content="<?= $seo->getUrl(); ?>"/>
    <!-- end: META -->
    <!-- start: MAIN CSS -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/boot.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/style.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>plugins/bootstrap/css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>fonts/style.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>plugins/animate.css/animate.min.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/main.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/main-responsive.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/theme_blue.css" type="text/css" id="skin_color">
    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/css3-animation/animations.css">

    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/iCheck/skins/all.css">
    <link rel="stylesheet"
          href="<?php echo PASTAADMIN; ?>plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.css">

    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"
          rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="<?= PASTAADMIN; ?>plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet"
          type="text/css"/>
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->

    <!-- end: MAIN CSS -->
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>plugins/revolution_slider/rs-plugin/css/settings.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>plugins/flex-slider/flexslider.css">
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>plugins/colorbox/example2/colorbox.css">
    <!-- start: CSS REQUIRED FOR FULLCALENDARIO -->
    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/fullcalendar/fullcalendar/fullcalendar.css">
    <!-- start: CSS REQUIRED FOR DATAPICKER -->
    <link rel="stylesheet" href="<?php echo INCLUDES; ?>Jcalendar.css">
    <!-- start: CSS REQUIRED FOR SELECT -->
    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/select2/select2.css">
    <!-- start: CSS REQUIRED FOR UPLOAD -->
    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
    <!-- start: CSS REQUIRED FOR CHECK -->
    <link rel="stylesheet"
          href="<?php echo PASTAADMIN; ?>plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
    <!-- start: CSS REQUIRED FOR CHECK -->
    <link rel="stylesheet" href="<?php echo PASTAADMIN; ?>plugins/DataTables/media/css/DT_bootstrap.css">
    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<?php echo PASTASITE; ?>css/font-awesome.min.css">
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="shortcut icon" href="<?= PASTASITE; ?>img/favicon.ico"/>
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <!-- start: HTML5SHIV FOR IE8 -->
    <!--[if lt IE 9]>
    <script src="<?php echo PASTASITE; ?><?php echo PASTASITE; ?>plugins/html5shiv.js"></script>
    <!-- SCRIPT GERAR GRAFICOS -->
    <script type="text/javascript" src="<?= HOME; ?>library/Helpers/includes/gera-grafico.js"></script>
    <![endif]-->
    <!-- end: HTML5SHIV FOR IE8 -->
    <!-- GOOGLE ANALITCS -->
    <?php if (ID_ANALITCS): ?>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', '<?php echo ID_ANALITCS; ?>', 'auto');
            ga('send', 'pageview');

        </script>
    <?php endif; ?>
    <!-- FIM / GOOGLE ANALITCS -->
</head>
<!-- end: HEAD -->
<body>
<!-- start: HEADER -->
<header class="colored-top-bar">
    <div class="clearfix" id="topbar">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <!-- start: TOP BAR CALL US -->
                    <div class="callus">
                        Nos chame no<a class="whatsapp" title="Nos chame no WhatSapp"
                           href="<?php Valida::geraLinkWhatSapp(Mensagens::ZAP01) ?>"
                           target="_blank">
                            <i class="fa fa-whatsapp"></i> WhatSapp
                        </a>
                          / E-Mail:
                        <a href="mailto:contato@gejdombosco.com.br">
                            contato@gejdombosco.com.br
                        </a>
                    </div>
                    <!-- end: TOP BAR CALL US -->
                </div>
                <div class="col-sm-4">
                    <!-- start: TOP BAR SOCIAL ICONS -->
                    <div class="social-icons">
                        <ul>
                            <li class="social-facebook tooltips" data-original-title="Facebook" data-placement="bottom">
                                <a target="_blank" href="https://www.facebook.com/gej.dombosco">
                                    Facebook
                                </a>
                            </li>
                            <li class="social-twitter tooltips" data-original-title="Twitter" data-placement="bottom">
                                <a target="_blank" href="https://twitter.com/gejdombosco">
                                    Twitter
                                </a>
                            </li>
                            <li class="social-instagram tooltips" data-original-title="Instagram"
                                data-placement="bottom">
                                <a target="_blank" href="https://www.instagram.com/gejdombosco/">
                                    Instagram
                                </a>
                            </li>
                            <li class="social-youtube tooltips" data-original-title="YouTube" data-placement="bottom">
                                <a target="_blank"
                                   href="https://www.youtube.com/channel/UCSFi4WhpTMdxxxGM8fBiAcA/videos">
                                    YouTube
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- end: TOP BAR SOCIAL ICONS -->
                </div>
            </div>
        </div>
    </div>
    <!-- end: TOP BAR -->
    <div role="navigation" class="navbar navbar-default navbar-fixed-top space-top">
        <!-- start: TOP NAVIGATION CONTAINER -->
        <div class="container">
            <div class="navbar-header">
                <!-- start: RESPONSIVE MENU TOGGLER -->
                <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- end: RESPONSIVE MENU TOGGLER -->
                <!-- start: LOGO -->
                <a class="navbar-brand" href="<?php echo PASTASITE; ?>">
                    <img src="<?php echo PASTASITE; ?>/img/logo1.png" width="170"/>
                </a>
                <!-- end: LOGO -->
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <a href="<?php echo PASTASITE; ?>">
                            Página Inicial
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
                            2º Abastecimento Espiritual <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<?php echo PASTASITE; ?>Inscricoes/CadastroAbastecimento">
                                    Inscrição
                                </a>
<!--                                <a href="--><?php //echo PASTASITE; ?><!--Inscricoes/Normas">-->
<!--                                    Normas do Retiro-->
<!--                                </a>                                    -->
                                <a href="<?php echo PASTASITE; ?>Inscricoes/SobrePagamento">
                                   Sobre o Pagamento
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a target="_blank" href="<?php echo PASTAADMIN; ?>Index/PrimeiroAcesso">
                            Área Administrativa
                        </a>
                    </li>
                    <li class="menu-search">
                        <!-- start: SEARCH BUTTON -->
                        <a href="#" data-placement="bottom" data-toggle="popover">
                            <i class="clip-search-3"></i>
                        </a>
                        <!-- end: SEARCH BUTTON -->
                        <!-- start: SEARCH POPOVER -->
                        <div class="popover bottom search-box">
                            <div class="arrow"></div>
                            <div class="popover-content">
                                <!-- start: SEARCH FORM -->
                                <form class="" id="searchform" action="#">
                                    <div class="input-group">
                                        <input type="text" class="form-control" placeholder="Pesquisar">
                                        <span class="input-group-btn">
                                                <button class="btn btn-main-color btn-squared" type="button">
                                                    <i class="clip-search-3"></i>
                                                </button>
                                            </span>
                                    </div>
                                </form>
                                <!-- end: SEARCH FORM -->
                            </div>
                        </div>
                        <!-- end: SEARCH POPOVER -->
                    </li>
                </ul>
            </div>
        </div>
        <!-- end: TOP NAVIGATION CONTAINER -->
    </div>
</header>
<!-- end: HEADER -->
<!-- start: MAIN CONTAINER -->
<div class="main-container">
    <!-- start: REVOLUTION SLIDERS -->
    <?php
    $url = new UrlAmigavel();
    $url->pegaControllerAction();
    ?>
</div>
<!-- end: MAIN CONTAINER -->
<!-- start: FOOTER -->
<footer id="footer" style="padding: 0px;">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="newsletter">
                    <h4>Receber Notícias</h4>
                    <p>
                        Cadastre seu E-mail para receber novidades sobre o GEJ Dom Bosco
                    </p>
                    <form method="POST" action="#" id="newsletterForm">
                        <div class="input-group">
                            <input type="text" id="email" name="email" placeholder="Seu Email" class="form-control">
                            <span class="input-group-btn">
                                    <button type="submit" class="btn btn-default">
                                        Enviar
                                    </button>
                                </span>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3">
                <h4>O Grupo</h4>
                <div class="twitter" id="tweet">
                    Evangelizar os Jovens...
                </div>
            </div>
            <div class="col-md-4">
                <div class="contact-details">
                    <h4>Contatos</h4>
                    <ul class="contact">
                        <li>
                            <p>
                                <i class="fa fa-map-marker"></i><strong>Endereço:</strong> <span style="color: white;">Paróquia São
                                                                João Evangelista <br/>QS 405 Samambaia Norte</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <i class="fa fa-envelope"></i><strong>CEP:</strong> <span style="color: white;">72000-000</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <i class="fa fa-phone"></i><strong>Telefone:</strong> <span style="color: white;">(61) 99105-8681</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <i class="fa fa-envelope"></i><strong>Email:</strong>
                                <a href="mailto:contato@gejdombosco.com.br">
                                    contato@gejdombosco.com.br
                                </a>
                            </p>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-2">
                <h4>Rede Sociais</h4>
                <div class="social-icons">
                    <ul>
                        <li class="social-facebook tooltips" data-original-title="Facebook" data-placement="bottom">
                            <a target="_blank" href="https://www.facebook.com/gej.dombosco"
                               data-original-title="Facebook">
                                Facebook
                            </a>
                        </li>
                        <li class="social-twitter tooltips" data-original-title="Twitter" data-placement="bottom">
                            <a target="_blank" href="https://twitter.com/gejdombosco">
                                Twitter
                            </a>
                        </li>
                        <li class="social-instagram tooltips" data-original-title="Instagram" data-placement="bottom">
                            <a target="_blank" href="https://www.instagram.com/gejdombosco/">
                                Instagram
                            </a>
                        </li>
                        <li class="social-youtube tooltips" data-original-title="YouTube" data-placement="bottom">
                            <a target="_blank" href="https://www.youtube.com/channel/UCSFi4WhpTMdxxxGM8fBiAcA/videos">
                                YouTube
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <a class="logo" href="#">
                        &copy; DESENVOLVIMENTO LEO BESSA <?php echo date("Y"); ?>
                    </a>
                </div>
                <div class="col-md-4">
                    <nav id="sub-menu">
                        <ul>
                            <li>
                                <a href="<?php echo PASTASITE; ?>Index/Blog">
                                    Perguntas Frequentes
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    Contatos
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</footer>
<a id="scroll-top" href="#"><i class="fa fa-angle-up"></i></a>
<!-- end: FOOTER -->
<!-- end: FOOTER -->
<?php Modal::aviso("alerta"); ?>
<!-- start: MAIN JAVASCRIPTS -->
<!-- start: MAIN JAVASCRIPTS -->
<!--[if lt IE 9]>
<script src="<?php echo PASTASITE; ?>plugins/respond.min.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/excanvas.min.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/html5shiv.js"></script>
<script type="text/javascript" src="<?= INCLUDES;?>jquery-1.10.2.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="<?php echo INCLUDES; ?>jquery-2.0.3.js"></script>
<!--<![endif]-->
<script src="<?php echo INCLUDES; ?>jquery-ui.js"></script>
<script type="text/javascript" src="<?php echo INCLUDES; ?>jquery.mask.js"></script>
<script type="text/javascript" src="<?php echo INCLUDES; ?>jquery.maskMoney.js"></script>
<?= '<script type="text/javascript">
                        function constantes(){    
                                var dados = {
                                    "HOME" : "' . HOME . '",
                                    "INATIVO" : "' . INATIVO . '",
                                    "PASTAUPLOADS" : "' . PASTAUPLOADS . '" ,                                       
                                    "AMBIENTE" : "WEB"                                      
                                    };
                                return dados;
                        }
                </script>'; ?>
<script type="text/javascript" src="<?php echo INCLUDES; ?>validacoes.js"></script>


<script src="<?= PASTAADMIN; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>

<script src="<?php echo PASTASITE; ?>plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/jquery.transit/jquery.transit.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/jquery.appear/jquery.appear.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/blockUI/jquery.blockUI.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/jquery-cookie/jquery.cookie.js"></script>
<script src="<?php echo PASTASITE; ?>js/main.js"></script>
<script src="<?php echo PASTAADMIN; ?>js/ui-animation.js"></script>
<!-- end: MAIN JAVASCRIPTS -->
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<script src="<?php echo PASTASITE; ?>plugins/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script
        src="<?php echo PASTASITE; ?>plugins/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/flex-slider/jquery.flexslider.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/stellar.js/jquery.stellar.min.js"></script>
<script src="<?php echo PASTASITE; ?>plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="<?php echo PASTAADMIN; ?>plugins/select2/select2.min.js"></script>
<script src="<?php echo PASTAADMIN; ?>plugins/bootstrap-switch/static/js/bootstrap-switch.min.js"></script>
<script src="<?php echo PASTAADMIN; ?>plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
<script src="<?= PASTAADMIN; ?>plugins/ckeditor/ckeditor.js"></script>
<script src="<?php echo PASTASITE; ?>js/index.js"></script>
<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->

<script type="text/javascript" src="<?php echo PASTAADMIN; ?>js/Funcoes.js"></script>
<?php carregaJs($url); ?>
<script>
    jQuery(document).ready(function () {
        Funcoes.init();
        Main.init();
        Index.init();
        $.stellar();
    });
</script>
</body>
</html>

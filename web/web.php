<?php
/** @var UrlAmigavel $url */
$url = new UrlAmigavel();
/** @var Seo $seo */
$seo = new Seo($url);
/** @var Sitemap $siteMap */
$siteMap = new Sitemap();
/** @var VisitaService $visitaService */
$visitaService = new VisitaService();
$visitaService->gestaoVisita();
?>
<!DOCTYPE html>
<html lang="pt-br" itemscope itemtype="https://schema.org/WebSite">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1.0,user-scalable=0">

    <!-- Inclução das tags do Seo -->
    <?php require_once 'library/Partial/Site/SeoTags.php'; ?>

    <!-- start: MAIN CSS -->
    <link rel="stylesheet" href="<?= PASTASITE; ?>css/boot.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>css/style.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>plugins/bootstrap/css/bootstrap.css" media="screen">
    <link rel="stylesheet" href="<?= PASTASITE; ?>plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>fonts/style.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>plugins/animate.css/animate.min.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>css/main.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>css/main-responsive.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>css/theme_blue.css" type="text/css" id="skin_color">
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/css3-animation/animations.css">
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/gritter/css/jquery.gritter.css">

    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/iCheck/skins/all.css">
    <link rel="stylesheet"
          href="<?= PASTA_LIBRARY; ?>plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/perfect-scrollbar/src/perfect-scrollbar.css">

    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css"
          rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet"
          type="text/css"/>
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->

    <!-- end: MAIN CSS -->
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="stylesheet" href="<?= PASTASITE; ?>plugins/revolution_slider/rs-plugin/css/settings.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>plugins/flex-slider/flexslider.css">
    <link rel="stylesheet" href="<?= PASTASITE; ?>plugins/colorbox/example2/colorbox.css">
    <!-- start: CSS REQUIRED FOR FULLCALENDARIO -->
    <!--    <link rel="stylesheet" href="-->
    <?php //echo PASTA_LIBRARY; ?><!--plugins/fullcalendar/fullcalendar/fullcalendar.css">-->
    <!-- start: CSS REQUIRED FOR DATAPICKER -->
    <link rel="stylesheet" href="<?= INCLUDES; ?>Jcalendar.css">
    <!-- start: CSS REQUIRED FOR SELECT -->
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/select2/select2.css">
    <!-- start: CSS REQUIRED FOR UPLOAD -->
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
    <!-- start: CSS REQUIRED FOR CHECK -->
    <link rel="stylesheet"
          href="<?= PASTA_LIBRARY; ?>plugins/bootstrap-switch/static/stylesheets/bootstrap-switch.css">
    <!-- start: CSS REQUIRED FOR CHECK -->
    <link rel="stylesheet" href="<?= PASTA_LIBRARY; ?>plugins/DataTables/media/css/DT_bootstrap.css">
    <!-- Icons/Glyphs -->
    <link rel="stylesheet" href="<?= PASTASITE; ?>css/font-awesome.min.css">
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="shortcut icon" href="<?= PASTASITE; ?>img/favicon.ico"/>
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <!-- start: HTML5SHIV FOR IE8 -->
    <!--[if lt IE 9]>
    <script src="<?= PASTASITE; ?><?= PASTASITE; ?>plugins/html5shiv.js"></script>
    <!--<![endif]-->
    <!-- SCRIPT GERAR GRAFICOS -->
    <script type="text/javascript" src="<?= HOME; ?>library/Helpers/includes/gera-grafico.js"></script>
    <![endif]-->
    <!-- end: HTML5SHIV FOR IE8 -->
</head>
<!-- end: HEAD -->
<body>
<!-- GOOGLE ANALITCS -->
<?php if (!ID_ANALITCS): ?>
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

        ga('create', '<?= ID_ANALITCS; ?>', 'auto');
        ga('send', 'pageview');

    </script>
<?php endif; ?>
<!-- FIM / GOOGLE ANALITCS -->
<!-- start: HEADER -->
<header class="colored-top-bar">
    <div class="clearfix" id="topbar">
        <div class="container">
            <div class="row">
                <div class="col-sm-8">
                    <!-- start: TOP BAR CALL US -->
                    <div class="callus">
                        Nos chame no<a class="whatsapp" title="Nos chame no WhatSapp"
                                       href="<?= Valida::geraLinkWhatSapp(Mensagens::ZAP01) ?>"
                                       target="_blank">
                            <i class="fa fa-whatsapp"></i> WhatSapp
                        </a>
                        / E-Mail:
                        <a href="mailto:<?= USER_EMAIL; ?>">
                            <?= USER_EMAIL; ?>
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
                <a class="navbar-brand" href="<?= PASTASITE; ?>">
                    <img src="<?= PASTASITE; ?>/img/logo1.png" width="170"/>
                </a>
                <!-- end: LOGO -->
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active">
                        <a href="<?= PASTASITE; ?>">
                            Página Inicial
                        </a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#" data-toggle="dropdown" data-hover="dropdown">
                            <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="<?= PASTASITE; ?>Inscricoes/CadastroRetiro">
                                    Fazer Inscrição
                                </a>
                                <a href="<?= PASTASITE; ?>Inscricoes/Normas">
                                    Normas do Retiro
                                </a>
                                <a href="<?= PASTASITE; ?>Inscricoes/SobrePagamento">
                                    Formas De Pagamento
                                </a>
                                <a href="<?= PASTASITE; ?>Inscricoes/VerInscricao">
                                    Ver Inscrição
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a target="_blank" href="<?= PASTAADMIN; ?>Index/PrimeiroAcesso">
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
                        Cadastre seu E-mail para receber novidades sobre a CCAUG
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
                <h4>A Comunidade</h4>
                <div class="twitter" id="tweet">
                    No dia 14 de setembro de 2020, nasce a Comunidade Católica Até a Última Gota (CCAUG), neste dia Deus
                    cumpre sua promessa. A fundação é constituída por Lilian Bessa (fundadora), Letícia Bessa
                    (cofundadora) e Linneker Lima (cofundador). Temos por carisma ser aquilo no sentido para qual Deus
                    nos criou. Nosso principal apostolado é a Escola de Apóstolos que tem por objetivo formar autênticos
                    filhos de Deus em sua integralidade.
                </div>
            </div>
            <div class="col-md-4">
                <div class="contact-details">
                    <h4>Contatos</h4>
                    <ul class="contact">
                        <!--                        <li>-->
                        <!--                            <p>-->
                        <!--                                <i class="fa fa-map-marker"></i><strong>Endereço:</strong> <span style="color: white;">Paróquia São-->
                        <!--                                                                João Evangelista <br/>QS 405 Samambaia Norte</span>-->
                        <!--                            </p>-->
                        <!--                        </li>-->
                        <li>
                            <p>
                                <i class="fa fa-envelope"></i><strong>CEP:</strong> <span style="color: white;">72000-000</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <strong>WhatSapp:</strong>
                                <a class="" title="Nos chame no WhatSapp"
                                   href="<?= Valida::geraLinkWhatSapp(Mensagens::ZAP01) ?>"
                                   target="_blank">
                                    <i class="fa fa-whatsapp whatsapp"></i>
                                </a>
                                <span style="color: white;">(61) 98167-8354</span>
                            </p>
                        </li>
                        <li>
                            <p>
                                <i class="fa fa-envelope"></i><strong>Email:</strong>
                                <a href="mailto:<?= USER_EMAIL; ?>">
                                    <?= USER_EMAIL; ?>
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
                <div class="col-md-12">
                    <a class="logo" href="#">
                        <?php
                        $linhas = fopen('versao.txt', "a+");
                        $versoes = fgets($linhas);
                        $versao = explode('//', $versoes);
                        ?>
                        <?= date("Y"); ?> &copy; Leo Bessa Desenvolvimento. <b>Versão: <?= $versao[4]; ?></b>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>
<a id="scroll-top" href="#"><i class="fa fa-angle-up"></i></a>
<!-- end: FOOTER -->
<!-- end: FOOTER -->
<?php Modal::aviso("alerta");
Notificacoes::alerta(); ?>
<!-- start: MAIN JAVASCRIPTS -->
<!-- start: MAIN JAVASCRIPTS -->
<!--[if lt IE 9]>
<script src="<?= PASTASITE; ?>plugins/respond.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/excanvas.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/html5shiv.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery-1.10.2.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="<?= INCLUDES; ?>jquery-2.0.3.js"></script>
<!--<![endif]-->
<script src="<?= INCLUDES; ?>jquery-ui.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery.mask.js"></script>
<script type="text/javascript" src="<?= INCLUDES; ?>jquery.maskMoney.js"></script>
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
<script type="text/javascript" src="<?= INCLUDES; ?>validacoes.js"></script>


<script src="<?= PASTA_LIBRARY; ?>plugins/bootstrap-fileupload/bootstrap-fileupload.js"></script>

<script src="<?= PASTASITE; ?>plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/jquery.transit/jquery.transit.js"></script>
<script src="<?= PASTASITE; ?>plugins/hover-dropdown/twitter-bootstrap-hover-dropdown.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/jquery.appear/jquery.appear.js"></script>
<script src="<?= PASTASITE; ?>plugins/blockUI/jquery.blockUI.js"></script>
<script src="<?= PASTASITE; ?>plugins/jquery-cookie/jquery.cookie.js"></script>
<script src="<?= PASTASITE; ?>js/main.js"></script>
<script src="<?= PASTA_LIBRARY; ?>js/ui-animation.js"></script>
<!-- end: MAIN JAVASCRIPTS -->
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<script src="<?= PASTASITE; ?>plugins/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/flex-slider/jquery.flexslider.js"></script>
<script src="<?= PASTASITE; ?>plugins/stellar.js/jquery.stellar.min.js"></script>
<script src="<?= PASTASITE; ?>plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="<?= PASTA_LIBRARY; ?>plugins/select2/select2.min.js"></script>
<script src="<?= PASTA_LIBRARY; ?>plugins/jQRangeSlider/jQAllRangeSliders-min.js"></script>
<script src="<?= PASTA_LIBRARY; ?>plugins/bootstrap-switch/static/js/bootstrap-switch.min.js"></script>
<!--<script src="--><?php //echo PASTA_LIBRARY; ?><!--plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>-->
<script src="<?= PASTA_LIBRARY; ?>plugins/ckeditor/ckeditor.js"></script>
<script src="<?= PASTASITE; ?>js/index.js"></script>
<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<?php include_once PARTIAL_LIBRARY . 'constantes_javascript.php'; ?>

<script type="text/javascript" src="<?= PASTA_LIBRARY; ?>js/Funcoes.js"></script>
<?php carregaJs($url); ?>
<script>
    jQuery(document).ready(function () {
        Funcoes.init();
        Main.init();
        Index.init();
    });
</script>
</body>
</html>

<H1>
    FALTA FAZER</H1><BR>
<H2>TROCAR REDES SOCIAIS<BR>
    CRIAR BOTÃO DE PAGAR NA VERIFICAÇÃO DA INSCRIÇÃO<BR>
    CRIAR LOJA NA PAGSEGURO DA CCAUG<BR>
</H2>

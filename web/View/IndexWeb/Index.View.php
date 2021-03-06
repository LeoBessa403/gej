<!--CONTEUDO-->
<!--bloco de video-->
<article class="container2">
    <section class="container2 bg-orange">
        <!--container2 do title-->
        <div class="content content-title">
            <header class="sectiontitle sectiontitle-nomargin">
                <h2>Saiba mais sobre nosso evento <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?></h2>
            </header>
            <div class="clear"></div>
        </div>
    </section>
    <div class="content content_video">
        <div class="video">
            <iframe class="video-large main_video" src="https://www.youtube.com/embed/mGctGtHDUSE" frameborder="0"
                    allow="autoplay; encrypted-media" allowfullscreen></iframe>
        </div>
        <aside class="al-center sectiontitle-insc">
            <h1>
                <!--                                <span class="label-danger" style="padding: 0.2% 1%;">ÚLTIMAS VAGAS</span><br/><br/>-->
                Faça sua incrição
                <a class="btn btn-green radius"
                   title="Inscrição para nosso evento <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>"
                   target="_blank"
                   href="<?php echo HOME; ?>web/Inscricoes/CadastroRetiro">Inscrição aqui</a>
                e não nosso evento <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>.</h1>
        </aside>
        <div class="clear"></div>
    </div>

    <footer class="bg-bluelight">
        <section class="content main_fotos" style="padding-bottom: 10px;">
            <h1>Veja Alguns momentos do Evento anterior!</h1>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/01.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/02.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/03.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/04.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/05.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/06.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/07.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/08.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/09.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/10.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/11.jpg">
            </article>

            <article class="box box-small">
                <img src="<?= PASTASITE; ?>img/galeria/12.jpg">
            </article>

            <aside class="al-center">
                <h1 class="click">Veja Mais
                    <a class="btn btn-dark-grey radius" title="Mais Fotos do nosso evento anterior"
                       target="_blank"
                       href="https://www.facebook.com/media/set/?set=a.553482708360285&type=1&l=dbee500a80">clique
                        aqui</a> para mais fotos.</h1>
            </aside>

            <div class="clear"></div>
        </section>
    </footer>
</article>

<!--seção relacional-->
<section class="container2 bg-orange section">
    <!--container2 do title-->
    <div class="content section">
        <header class="sectiontitle sectiontitle-nomargin section-retiro">
            <h1>Porque participar do nosso <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>?</h1>
            <p class="tagline">Esse retiro é p você que já é de caminhada na IGREJA e que já teve seu primeiro encontro
                com Jesus, mas sente o desejo de viver um AUTOCONHECIMENTO, AMADURECIMENTO e APROFUNDAMENTO na sua vida
                espiritual</p>
            <p>Venha viver esse ABASTECIMENTO!</p>
        </header>
        <div class="clear"></div>
    </div>

    <!--container2 dos artigos-->
    <div class="container2 bg-body section article">
        <div class="content section">
            <article class="main_tec_item box box-medium al-center radius">
                <img src="<?php echo HOME; ?>web/img/teatro.png" alt="Teatro"
                     title="Peças Teatrais">
                <h1>Teatro:</h1>
                <p class="tagline">A equipe de Teatro evangeliza através da encenação, mostra aos jovens uma realidade
                    do nosso dia a dia, que muitas vezes passa despercebido.!</p>
            </article>

            <article class="main_tec_item box box-medium al-center radius">
                <img src="<?php echo HOME; ?>web/img/animacao.png"
                     alt="Animação" title="Animação">
                <h1>Animação:</h1>
                <p class="tagline">A equipe de animação leva o carisma da alegria, levando ao coração dos jovens à
                    verdadeira alegria que vem de Deus,</p>
            </article>

            <article class="main_tec_item box box-medium al-center radius">
                <img src="<?php echo HOME; ?>web/img/adoracao.png"
                     alt="Adoração" title="Adoração">
                <h1>Adoração:</h1>
                <p class="tagline">Adorar Jesus no Santíssimo, nos enche de alegria, amadurece nossa união com Ele;
                    e crescemos no amor a Deus e ao próximo.</p>
            </article>

            <article class="main_tec_item box box-medium al-center radius">
                <img src="<?php echo HOME; ?>web/img/reflexao.png"
                     alt="Reflexão" title="Reflexão">
                <h1>Reflexão:</h1>
                <p class="tagline">Deus sempre olha por nós, ele cuida das nossas vidas, guia-nos no caminho do bem,
                    abençoa a nossa jornada.</p>
            </article>

            <article class="main_tec_item box box-medium al-center radius">
                <img src="<?php echo HOME; ?>web/img/musica.png"
                     alt="Música" title="Música">
                <h1>Música:</h1>
                <p class="tagline">A equipe de Música é responsável de evangelizar através da música auxiliando em
                    momentos de oração e também animação.!</p>
            </article>

            <article class="main_tec_item box box-medium al-center radius">
                <img src="<?php echo HOME; ?>web/img/pregacao.png"
                     alt="Pregação" title="Pregação">
                <h1>Pregação:</h1>
                <p class="tagline">Algumas pessoas têm o dom de pregação. Essas pessoas ajudam a edificar a igreja,
                    ensinando mais sobre a palavra de Deus.</p>
            </article>
            <div class="clear"></div>
        </div>
    </div>
</section>


<ul class="sharebox bg-light">
    <li class="like facebook"><a
                href="https://www.facebook.com/gej.dombosco" target="_blank"
                title="Compartilhe no Facebook">Compartilhe no Facebook</a></li>
    <li class="like google"><a href="https://www.instagram.com/gejdombosco/" target="_blank"
                               title="Recomende no Instagram">Recomende no Instagram</a></li>
    <li class="like twitter"><a href="https://twitter.com/gejdombosco" target="_blank"
                                rel="&text=nosso evento <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>! @gejdombosco"
                                title="Conte Isto no Twitter">Conte Isto no Twitter</a>
    </li>
</ul>
<!--seção temática-->
<section class="container2 section bg-bluelight al-center" style="text-align: center;">
    <div class="content">
        <header class="sectiontitle">
            <h1 class="shoticon shoticon-config shoticon-sectiontitle ds-inblock orange">Formas de Pagamento:</h1>
            <p class="tagline">Dividimes em ate 12x o seu pagamento do retiro!</p>
        </header>

        <article class="main_info box box-large"><img src="<?php echo HOME; ?>web/img/banner-pagseguro.png"
                                                      title="Forma de Pagamento">
        </article>
        <article class="main_info box box-large last"><img
                    src="<?php echo HOME; ?>web/img/banner-pagseguro-forma-pagamento.png"
                    title="Forma de Pagamento">
        </article>
        <div class="clear"></div>
    </div>
</section>

<!--retomada e converção-->
<article class="container2 bg-blue section">
    <div class="content content-page al-center section">
        <header class="sectiontitle section">
            <h1 style="color: #E16F4D">Em caso de Dúvidas procure nossa Coordenação / Comissão</h1>
            <p class="tagline">Dúvidas sobre pagamentos, vagas e inscrições entrar em contato: <br><b class="nummeros">
                    clique e nos chame pelo
                    <a class="whatsapp" title="Nos chame no WhatSapp"
                       href="<?= Valida::geraLinkWhatSapp(Mensagens::ZAP02) ?>"
                       target="_blank">
                        <i class="fa fa-whatsapp"></i> WhatSapp
                    </a>
                </b></p>
        </header>
        <h2 style="color: #CCD8D1;">
            <!--                        <span class="label-success" style="padding: 0.2% 1%;">ÚLTIMAS VAGAS</span> <br/><br/>-->
            Faça sua incrição
            <a class="btn btn-bricky btn-big radius"
               title="Quero Fazer minha inscrição do nosso evento <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?> Agora!"
               target="_blank"
               href="<?php echo HOME; ?>web/Inscricoes/CadastroRetiro">Inscrição aqui</a> e não perca nosso evento
            <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>.</h2>

        <div class="clear"></div>
    </div>
</article>        <!--CONTEUDO-->

<!--content visual-->
<div class="container2 section">
    <div class="content section content-page al-center font-light">
        <h1 class="frase">"Basta que sejais jovens para que eu vos ame."
            <small>(São João Bosco)</small>
        </h1>
        <div class="clear"></div>
    </div>
</div>

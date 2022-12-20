<h4>Formas de Pagamento</h4>
<div class="row">
    <h3 style="margin-left: 15px;">Investimento do <?= InscricaoEnum::DESC_EVENTO_ATUAL;?> e de somente
        <?= Valida::FormataMoeda(InscricaoEnum::VALOR_CARTAO, 'R$'); ?>
        e pode ser em até 12x no Cartão</h3>
<!--    <div style="display: block; padding: 0;text-align: center">-->
<!--        <a href="--><?//= HOME; ?><!--web/Inscricoes/VerInscricao" class="btn btn-dark-grey">-->
<!--            <span class="ladda-label"> Pagar Agora </span>-->
<!--            <i class="fa fa-money"></i>-->
<!--        </a>-->
<!--    </div>-->
    <header class="sectiontitle section">
        <h1 style="color: #E16F4D; font-weight: bolder;">Em caso de Dúvidas procure nossa Coordenação / Comissão</h1>
        <p class="tagline">Dúvidas sobre pagamentos, vagas e inscrições entrar em contato: <br><b
                    class="nummeros">
                clique e nos chame pelo
                <a class="whatsapp" title="Nos chame no WhatSapp"
                   href="<?= Valida::geraLinkWhatSapp(Mensagens::ZAP04) ?>"
                   target="_blank">
                    <i class="fa fa-whatsapp"></i> WhatSapp
                </a>
            </b></p>
    </header>
    <div class="row col-md-12" style="padding: 30px; margin-top: 5px; float: left;">
        <h2>Para PIX:</h2>
        <div class="col-md-12">
            <b>ASSOCIAÇÃO CATÓLICA DA MIHI ANIMAS<br>
                CHAVE PIX (CNPJ): 42.494.508/0001-33
            </b>
        </div>
        <br>
        <h3 style="margin-top: 50px; float: left;">Enviar Comprovante pelo nosso
            <a class="whatsapp" title="Nos chame no WhatSapp"
               href="<?= Valida::geraLinkWhatSapp(Mensagens::ZAP05) ?>"
               target="_blank">
                <i class="fa fa-whatsapp"></i> WhatSapp
            </a>
        </h3>
    </div>
</div>
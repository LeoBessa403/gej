<h4>Formas de Pagamento</h4>
<div class="row">
    <h3 style="margin-left: 15px;">Investimento do Abastecimento e de somente
        <?= Valida::FormataMoeda(InscricaoEnum::VALOR_CARTAO, 'R$'); ?>
        pode ser em até 12x no Cartão</h3>
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
    <div class="row" style="padding: 30px; margin-top: 5px; float: left;">
        <h2>Para Depósito em Conta:</h2>
        <div class="col-md-6">
            <b>Banco Caixa<br>
                Agência: 0003<br>
                Conta: 00004346-8<br>
                Operação: 013<br>
                Nome: Victtoria Macedo Leal
            </b>
        </div>
        <div class="col-md-6">
            <b>Banco Bradesco<br>
                Agência: 1298 <br>
                Conta Corrente: 0018031-9<br>
                Nome: Letícia Machado Carvalho Bessa
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
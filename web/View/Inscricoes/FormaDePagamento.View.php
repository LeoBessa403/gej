<div class="main-content" xmlns="http://www.w3.org/1999/html">
    <div class="container">
        <div class="col-md-6">
            <h4>Formas de Pagamento</h4>
            <?php
            Valida::Mensagem(strtoupper(Mensagens::OK_SALVO_MEMBRO_RETIRO_CARNAVAL), 2);
            ?>
            <div class="row" style="background-color: rgba(225, 238, 208, 1); padding: 20px 0;">
                <h3 style="margin-left: 15px;">Investimento do Retiro somente R$
                    <?= InscricaoEnum::VALOR_CARTAO; ?> até 12x no Cartão</h3>
                <form action="<?= HOME; ?>web/Inscricoes/ConcluirInscricao" role="form" id="formaPagamento"
                      name="formaPagamento" method="post" class="formulario">
                    <div class="col-md-12">
                        <div class="form-group">
                            <label for="no_perfil" class="control-label"> Forma de pagamento
                                <span class="symbol required"></span>
                            </label><br>
                            <select id="<?= CO_TIPO_PAGAMENTO; ?>" class="ob"
                                    name="<?= CO_TIPO_PAGAMENTO; ?>">
                                <option value="">Selecione uma forma de Pagamento</option>
                                <?php
                                foreach ($formas as $key => $forma) { ?>
                                    <option value="<?= $key; ?>"><?= $forma; ?></option>
                                <?php }
                                ?>
                            </select>
                            <input type="hidden" id="<?= CO_INSCRICAO; ?>"
                                   name="<?= CO_INSCRICAO; ?>" value="<?= $coInscricao; ?>">
                        </div>
                        <div class="col-md-12" style="display: block; padding: 0;">
                            <button data-style="zoom-out" class="btn btn-success ladda-button" type="submit"
                                    value="formaPagamento" name="formaPagamento" style="margin-top: 10px;">
                                <span class="ladda-label"> Salvar </span>
                                <i class="fa fa-save"></i>
                                <span class="ladda-spinner"></span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="col-md-6" style="padding: 10px;">
            <h4>Formas de Pagamento</h4>
            <div class="row">
                <h3 style="margin-left: 15px;">Investimento do Abastecimento e de somente R$ <?= InscricaoEnum::VALOR_CARTAO; ?> pode ser em até 12x
                    no Cartão</h3>
                <header class="sectiontitle section">
                    <h1 style="color: #E16F4D; font-weight: bolder;">Em caso de Dúvidas procure nossa Coordenação / Comissão</h1>
                    <p class="tagline">Dúvidas sobre pagamentos, vagas e inscrições entrar em contato: <br><b
                                class="nummeros">
                            clique e nos chame pelo
                            <a class="whatsapp" title="Nos chame no WhatSapp"
                               href="https://api.whatsapp.com/send?phone=<?php echo WHATSAPP; ?>&text=Estou%20com%20dúvidas%20sobre%20o%20Pagamento!&l=pt_BR"
                               target="_blank">
                                <i class="fa fa-whatsapp"></i> WhatSapp
                            </a>
                        </b></p>
                </header>
                <div class="row" style="padding: 30px; margin-top: 5px; float: left;">
                    <h2>Para Depósito em Conta:</h2>
                    <div class="col-md-6">
                        <b>Banco Caixa<br>
                            Agência: 4167<br>
                            Conta: 00053713-8<br>
                            Operação: 013<br>
                            Nome: Raul Dias Miranda Cardoso
                        </b>
                    </div>
                    <div class="col-md-6">
                        <b>Banco do Brasil<br>
                            Agência: 2895-9<br>
                            Conta Corrente: 36566-1<br>
                            Nome: Letícia Machado Carvalho Bessa
                        </b>
                    </div>
                    <br>
                    <h3 style="margin-top: 50px; float: left;">Enviar Comprovante pelo nosso
                        <a class="whatsapp" title="Nos chame no WhatSapp"
                           href="https://api.whatsapp.com/send?phone=<?php echo WHATSAPP; ?>&text=Segue%20o%20comprovante%20do%20pagamento%20do%20Abastecimento%20Espirirual!&l=pt_BR"
                           target="_blank">
                            <i class="fa fa-whatsapp"></i> WhatSapp
                        </a>
                    </h3>
                </div>
            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
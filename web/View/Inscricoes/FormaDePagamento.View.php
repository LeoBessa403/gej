<div class="main-content" xmlns="http://www.w3.org/1999/html">
    <div class="container">
        <div class="col-md-6">
            <h4>Formas de Pagamento</h4>
            <?php
            Valida::Mensagem(strtoupper(Mensagens::OK_SALVO_MEMBRO_RETIRO_CARNAVAL), 2);
            ?>
            <div class="row" style="background-color: rgba(225, 238, 208, 1); padding: 20px 0;">
                <h3 style="margin-left: 15px;">Investimento do Retiro somente
                    <?= Valida::FormataMoeda(InscricaoEnum::VALOR_CARTAO, 'R$'); ?> até 12x no Cartão</h3>
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
                            <input type="hidden" id="dsInscricao"
                                   name="dsInscricao" value="<?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>">
                            <input type="hidden" id="nuValorInscricao"
                                   name="nuValorInscricao" value="<?= Valida::FormataMoedaBanco(InscricaoEnum::VALOR_CARTAO); ?>">
                        </div>
                        <div class="col-md-12" style="display: block; padding: 0;">
                            <button data-style="zoom-out" class="btn btn-green ladda-button" type="submit"
                                    value="formaPagamento" name="formaPagamento" style="margin-top: 10px;">
                                <span class="ladda-label"> Salvar </span>
                                <i class="fa fa-save"></i>
                                <span class="ladda-spinner"></span>
                            </button>
                            <a id="pagarAgora" class="btn btn-dark-grey" style="margin-top: 10px;">
                                <span class="ladda-label"> Pagar Agora </span>
                                <i class="fa fa-money"></i>
                            </a>
                        </div>
                    </div>
                </form>

                <form id="comprar" action="https://pagseguro.uol.com.br/checkout/v2/payment.html" method="post" onsubmit="PagSeguroLightbox(this); return false;">
                    <input type="hidden" name="code" id="code" value="" />
                </form>
            </div>
        </div>
        <div class="col-md-6" style="padding: 10px;">
            <?php require_once PARTIAL_SITE.'DetalhePagamento.php'; ?>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->

<!-- SCRIPT PAGSEGURO -->
<script type="text/javascript" src="https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.lightbox.js"></script>
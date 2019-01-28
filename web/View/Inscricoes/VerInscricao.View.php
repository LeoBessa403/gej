<div class="main-content">
    <div class="container">
        <h4>Ver Inscrição do <?= InscricaoEnum::DESC_EVENTO_ATUAL; ?></h4>
        <div class="row" style="min-height: 500px;">
            <?php
            if ($inscDuplicada):
                Valida::Mensagem($inscDuplicada, 3);
                echo $form;
            elseif ($result) :
                /** @var InscricaoEntidade $inscricao */
                $inscricao = $result;
                /** @var EnderecoEntidade $endereco */
                $endereco = $inscricao->getCoPessoa()->getCoEndereco();
                $valorAPagar = InscricaoEnum::VALOR_CARTAO - $inscricao->getCoPagamento()->getNuValorPago() -
                    $inscricao->getCoPagamento()->getNuValorDesconto();
                ?>
                <div class="col-md-12">
                    <div class="form-group">
                        <input type="hidden" id="<?= CO_INSCRICAO; ?>"
                               name="<?= CO_INSCRICAO; ?>" value="<?= $inscricao->getCoInscricao(); ?>"/>
                        <input type="hidden" id="dsInscricao"
                               name="dsInscricao" value="<?= InscricaoEnum::DESC_EVENTO_ATUAL; ?>"/>
                        <input type="hidden" id="nuValorInscricao"
                               name="nuValorInscricao"
                               value="<?= Valida::FormataMoedaBanco($valorAPagar); ?>"/>

                        <div class="col-sm-6">
                            <p>Nome:
                                <big><b>
                                        <?php echo $inscricao->getCoPessoa()->getNoPessoa(); ?>
                                    </b></big></p>
                            <p>CPF:
                                <big><b>
                                        <?php
                                        echo Valida::MascaraCpf($inscricao->getCoPessoa()->getNuCpf());
                                        ?>
                                    </b></big></p>
                            <p>Nascimento:
                                <big><b>
                                        <?php echo Valida::DataShow($inscricao->getCoPessoa()->getDtNascimento()); ?>
                                    </b></big></p>
                            <p>Tel. Celular:
                                <big><b>
                                        <?php echo Valida::MascaraTel(
                                            $inscricao->getCoPessoa()->getCoContato()->getNuTel1()
                                        ); ?>
                                    </b></big></p>
                            <p>E-mail:
                                <big><b>
                                        <?php echo $inscricao->getCoPessoa()->getCoContato()->getDsEmail(); ?>
                                    </b></big></p>
                            <p>Endereço:
                                <big><b><?php echo $endereco->getDsEndereco(); ?>
                                    </b></big></p>
                            <p>Bairro/Cidade/Estado:
                                <big><b><?php
                                        echo $endereco->getDsBairro() . ' / ' . $endereco->getNoCidade() . ' / ' .
                                            $endereco->getSgUf();
                                        ?></b></big></p>
                        </div>
                        <div class="col-sm-6">
                            <p>Tamanho Camisa:
                                <big><b>
                                        <?php
                                        echo FuncoesSistema::TamanhoCamisa($inscricao->getNuCamisa());
                                        ?>
                                    </b></big></p>
                            <p>Membro GEJ:
                                <big><b>
                                        <?php echo FuncoesSistema::SituacaoSimNao($inscricao->getDsMembroAtivo()); ?>
                                    </b></big></p>
                            <p>Parcelas:
                                <big><b>
                                        <?php
                                        $parcelas = $inscricao->getCoPagamento()->getNuParcelas();
                                        echo "0" . $parcelas; ?>
                                    </b></big></p>
                            <p>Tipo de Pagamento:
                                <big><b><?php echo TipoPagamentoEnum::getDescricaoValor(
                                            $inscricao->getCoPagamento()->getCoPrimeiraParcela()->getCoTipoPagamento()
                                        );
                                        ?></b></big></p>
                            <p>Situação do Pagamento:
                                <big><b><?php
                                        echo FuncoesSistema::Pagamento($inscricao->getCoPagamento()->getTpSituacao());
                                        ?></b></big></p>
                            <p>Desconto R$:
                                <big><b><?php echo Valida::FormataMoeda($inscricao->getCoPagamento()->getNuValorDesconto()); ?></b></big>
                            </p>
                            <p>Total Pago R$:
                                <big><b><?php echo Valida::FormataMoeda($inscricao->getCoPagamento()->getNuValorPago()); ?></b></big>
                            </p>
                        </div>
                        <?php
                        if($inscricao->getCoPagamento()->getTpSituacao() !=
                            StatusPagamentoEnum::CONCLUIDO){
                        ?>
                        <div class="col-sm-12" style="text-align: center;">
                            <a id="pagarAgora" class="btn btn-dark-grey" style="margin-top: 25px;">
                                <span class="ladda-label"> Pagar Agora </span>
                                <i class="fa fa-money"></i>
                            </a>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            <?php
            else:
                echo $form;
            endif;
            ?>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
<form id="comprar" action="https://pagseguro.uol.com.br/checkout/v2/payment.html" method="post"
      onsubmit="PagSeguroLightbox(this); return false;">
    <input type="hidden" name="code" id="code" value=""/>
</form>

<script type="text/javascript"
        src="https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.lightbox.js"></script>
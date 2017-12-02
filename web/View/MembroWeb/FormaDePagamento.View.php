<div class="main-content" xmlns="http://www.w3.org/1999/html">
    <div class="container">
        <div class="col-md-6">
            <h4>Formas de Pagamento</h4>
            <?php
            Valida::Mensagem(strtoupper(Mensagens::OK_SALVO_MEMBRO_RETIRO_CARNAVAL), 2);
            ?>
            <div class="row" style="background-color: rgba(225, 238, 208, 1); padding: 20px 0;">
                <h3 style="margin-left: 15px;">Investimento do Retiro R$ 120,00</h3>
                <form action="<?= HOME; ?>web/MembroWeb/ConcluirInscricao" role="form" id="formaPagamento"
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
                <div class="row" id="dinheiro"
                     style="padding: 30px; margin-top: 5px; float: left; display: none">
                    <h3>Entrar em Contato:</h3>
                    <b>(61) 98499-5380 ou (61) 99327-4991 ou (61) 99325-9985 <br>(Todos WhatsApp)</b>
                </div>
                <div class="row" id="cartao"
                     style="padding: 30px; margin-top: 5px; float: left; display: none">
                    <h4>Pelo Pagseguro em ate 12X:</h4>
                    <h4>Pagar Pessoalmente Entrar em contato</h4>
                    <b>(61) 98499-5380 ou (61) 99327-4991 ou (61) 99325-9985 <br>(Todos WhatsApp)</b>
                </div>
                <div class="row" id="deposito"
                     style="padding: 30px; margin-top: 5px; float: left; display: none">
                    <h3>Depósito em Conta:</h3>
                    <div class="col-md-6">
                        <b>Banco Caixa<br>
                            Agência: 1041<br>
                            Conta: 00026739-0<br>
                            Operação: 013<br>
                            Nome: Linneker Lima R. Gomes
                        </b>
                    </div>
                    <div class="col-md-6">
                        <b>Banco Bradesco<br>
                            Agência: 1298<br>
                            Conta: 0510813-6<br>
                            Nome: Leonardo Machado C Bessa
                        </b>
                    </div>
                    <br>
                    <h4>Enviar Comprovante</h4>
                    <b>(61) 98499-5380 ou (61) 99327-4991 ou (61) 99325-9985 <br>(Todos WhatsApp)</b>
                </div>
            </div>
        </div>
        <div class="col-md-6" style="padding: 10px;">
            <h4>Normas do Retiro</h4>
            <div>
                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:20.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">5° Retiro de Carnaval </span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:20.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">Santifique-se</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:20.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">26, 27 e 28 de fevereiro de 2017</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">“Vós sois a carta de Cristo” </span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><span style="font-size:16.0pt;mso-bidi-font-size:11.0pt;
line-height:107%;font-family:&quot;Agency FB&quot;">&nbsp;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;&nbsp;&nbsp;&nbsp; </span>É
imensa a alegria em telo no nosso 5º retiro de carnaval Santifique-se.
Estaremos juntos durante três dias e para que nossa convivência seja harmoniosa
e muito proveitosa existem alguns aspectos para serem cumpridos para que
aproveitemos o máximo do que o Senhor tem para nos oferecer. </span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;">&nbsp;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;;color:red">Deve:</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;
mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Agency FB&quot;">Levar:<br>
</span></b><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span>- Bíblia</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span>- Levar
objetos de uso pessoal tais como:</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-indent:35.4pt"><span style="font-size:14.0pt;mso-bidi-font-size:
11.0pt;line-height:107%;font-family:&quot;Agency FB&quot;">* Cobertor, lençol e
travesseiro;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>* Toalha, sabonete, Creme dental e
escova de dente;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>* Roupas adequadas para o retiro (Calças
e blusas) </span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span><span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>* Levar sandálias; </span>
                    </p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span>- Levar
uma muda de roupa branca (Calça, Camisa e calçado se possível); </span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;"><span style="mso-spacerun:yes">&nbsp;</span>- Além das
demais roupas levar roupas confortáveis como leg, bermuda e regata para
atividades (Em Alguns momentos)</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;">&nbsp;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;;color:red">Exigências</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;
mso-bidi-font-size:11.0pt;line-height:107%;font-family:&quot;Agency FB&quot;">Proibido: </span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;">- É PROIBIDO Levar e Utilizar qualquer tipo de
dispositivo, aparelho ou equipamento eletrônico, tais como:</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-indent:35.4pt"><span style="font-size:14.0pt;mso-bidi-font-size:
11.0pt;line-height:107%;font-family:&quot;Agency FB&quot;">* mp3, mp4, rádios, máquina
fotográfica e/ou filmadora;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-indent:35.4pt"><span style="font-size:14.0pt;mso-bidi-font-size:
11.0pt;line-height:107%;font-family:&quot;Agency FB&quot;">* celular, jogos portáteis; </span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify;text-indent:35.4pt"><span style="font-size:14.0pt;mso-bidi-font-size:
11.0pt;line-height:107%;font-family:&quot;Agency FB&quot;">* relógio e/ou despertador; </span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;">Obs.: Durante o período de todas as atividades é
proibido o uso de shorts ou bermuda e Camisas Regatas ou blusas de alça. Os
mesmos poderão ser usados após o toque de recolher. </span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;">&nbsp;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:16.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;;color:red">Recomendações</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">- Cumprir os horários das atividades;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">- Caso precise de remédio, primeiros socorros, material de higiene
pessoal procurar algum servo identificado para este fim;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;text-align:
justify"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:
107%;font-family:&quot;Agency FB&quot;">- Avisar familiares sobre a sua participação no
encontro. (Pessoa Responsável).</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">&nbsp;</span></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">Saída: Paróquia São João Evangelista</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">Horário: 7:00 <br>
Data: 26/02/2017 (Domingo)<br>
Coordenador: Linneker (61) 99325-9985</span></b></p>

                    <p class="MsoNormal" style="margin-bottom:0cm;margin-bottom:.0001pt;
text-align:center" align="center"><b style="mso-bidi-font-weight:normal"><span style="font-size:14.0pt;mso-bidi-font-size:11.0pt;line-height:107%;font-family:
&quot;Agency FB&quot;">Comissão: Leo (61) 99327-4991 ou Fernanda (61) 98499-5380</span></b></p>

            </div>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
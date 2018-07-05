<div class="main-content">
    <div class="container inscricao" style="margin-bottom: 150px;">
        <h4>Inscrição do 2º Abastecimento Espiritual</h4>
        <?php
        if ($result):
            Valida::Mensagem(strtoupper(Mensagens::OK_MEMBRO_RETIRO_LISTA_ESPERA), 2);
        endif;
        if ($resultAlt):
            Valida::Mensagem(strtoupper(Mensagens::MEMBRO_JA_CADASTRADO), 2);
        endif;
        if ($inscDuplicada):
            Valida::Mensagem($inscDuplicada, 2);
        endif;
        ?>
        <div class="row">
            <?php
//            echo $form;
            Valida::Mensagem(strtoupper(Mensagens::INSCRICOES_ENCERRADAS), 2);
            ?>
        </div>
        <!-- end: PAGE CONTENT-->
    </div>
</div>
<!-- end: PAGE -->
$(function () {

    // Verifica Origem do Pedido
    function origemPedido(limpaCampo) {
        if ($("#st_estoque").prop('checked')) {
            $("#no_pessoa").val('Estoque Administrativo').attr('disabled', true);
        } else {
            $("#no_pessoa").attr('disabled', false);
            if(limpaCampo)
                $("#no_pessoa").val('');
        }
    }
    $("#st_estoque").change(function () {
        origemPedido(true);
    });
    origemPedido(false);

    function verificaDataPedido() {
        var stPedido = $("#st_pedido").val();
        if(stPedido == 1){
            $("#dt_pedido, #dt_entregue").val('').removeClass('ob')
                .parent(".form-group").slideUp("fast");
            tiraValidacao('dt_pedido');
            tiraValidacao('dt_entregue');0
        }else if(stPedido < 4){
            $("#dt_entregue").val('').removeClass('ob')
                .parent(".form-group").slideUp("fast");
            tiraValidacao('dt_entregue');
            $("#dt_pedido").addClass('ob').parent(".form-group").slideDown("slow");
        }else if(stPedido == 4){
            $("#dt_pedido, #dt_entregue").addClass('ob').parent(".form-group").slideDown("slow");
        }
    }

    $("#st_pedido").change(function () {
        verificaDataPedido();
    });
    verificaDataPedido();

    function tiraValidacao(id) {
        $('#' + id).parent(".form-group").removeClass('has-success').removeClass('has-error');
        $('#' + id).parents('#form-group-' + id).removeClass('has-success').removeClass('has-error');
        $('span#' + id + '-info').text(".");
    }

    $("#nu_quantidade").attr('maxlength', 3);
});
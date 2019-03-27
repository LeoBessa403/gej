$(function () {
//VARIÁVEIS GLOBAIS
    var dados = constantes();

    var home = dados['HOME'];
    var urlValida = home + 'admin/Controller/Ajax.Controller.php';

    $('#pagarAgora').click(function () {
        var coPlano = $('#co_plano').val();
        $.get(urlValida, {
            'valida': 'getReferenciaPagamentoAssinante',
            'co_plano': coPlano
        }, function (data) {
            $('#code').val(data);
            $('#comprar').submit();
        })
    })

});
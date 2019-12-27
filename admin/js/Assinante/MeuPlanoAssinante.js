$(function () {
//VARI�VEIS GLOBAIS
    var dados = constantes();

    var home = $("#home").attr('data-val');
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
$(function () {
    var home = $("#home").attr('data-val');
    var urlValida = home + 'admin/Class/PagSeguro.class.php';

    $('#co_tipo_pagamento').change(function () {
        if ($(this).val() == 2) {
            $('#pagarAgora').show();
        } else {
            $('#pagarAgora').hide();
        }
    });
    $('#pagarAgora').hide();

    $('#pagarAgora').click(function () {
        var coInscricao = $('#co_inscricao').val();
        var dsInscricao = $('#dsInscricao').val();
        var nuValorInscricao = $('#nuValorInscricao').val();
        $.post(urlValida, {
            'co_inscricao': coInscricao,
            'dsInscricao': dsInscricao,
            'nuValorInscricao': nuValorInscricao
        }, function (data) {
            $('#code').val(data);
            $('#comprar').submit();
        })
    })

});
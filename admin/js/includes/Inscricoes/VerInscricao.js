$(function () {
    //VARIÁVEIS GLOBAIS
    var dados = constantes();

    var home = dados['HOME'];
    var urlValida = home + 'admin/Class/PagSeguro.class.php';

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
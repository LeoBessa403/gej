$(function () {
    $(".inscricao_model .btn-success").click(function () {
        var motivo = $('#ds_observacao').val().trim();
        var url_action = $(this).attr("data-url-action");
        location.href=url_action + '/' + motivo;
    });

    $(".acao").click(function () {
        var id = $(this).attr("id");
        var url_action = $(this).attr("data-url-action");
        $(".inscricao_model .btn-success").attr('id', id);
        $(".inscricao_model .btn-success").attr('data-url-action', url_action);
    });

});
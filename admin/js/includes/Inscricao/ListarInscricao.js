$(function () {


    $(".inscricao_model .btn-success").click(function () {
        var url_action = $(this).attr("data-url-action");
        location.href=url_action;
    });

    $(".acao").click(function () {
        var id = $(this).attr("id");
        var url_action = $(this).attr("data-url-action");
        $(".inscricao_model .btn-success").attr('id', id);
        $(".inscricao_model .btn-success").attr('data-url-action', url_action);
    });

});
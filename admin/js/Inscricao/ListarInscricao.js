$(function () {

    function manterStatusInscricao(acao, coInscricao) {
        var dados = Funcoes.Ajax('Inscricao/' + acao, coInscricao);
        if (dados.sucesso) {
            Funcoes.Sucesso('Inscrição alterada com Sucesso.');
            setTimeout(function () {
                location.reload();
            }, 3000);
        }
    }

    $(".model_confirmacao_desativacao .btn-success").click(function () {
        var id = $(this).attr("id");
        var acao = $(this).attr("data-acao");
        manterStatusInscricao(acao, id);
    });

    $(".acao").click(function () {
        var id = $(this).attr("id");
        var data_acao = $(this).attr("data-acao");
        $(".btn-success").attr('id', id);
        $(".btn-success").attr('data-acao', data_acao);
    });

    $(".model_confirmacao_ativacao .btn-success").click(function () {
        var id = $(this).attr("id");
        var acao = $(this).attr("data-acao");
        manterStatusInscricao(acao, id);
    });



});
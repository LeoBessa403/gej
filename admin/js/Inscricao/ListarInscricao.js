$(function () {

    function manterStatusInscricao(acao, coInscricao) {
        var dados = Funcoes.Ajax('Inscricao/' + acao, coInscricao);
        Funcoes.Sucesso('Inscrição alterada com Sucesso.');
    }

    $(".acao").click(function () {
        var id = $(this).attr("id");
        var acao = $(this).attr("data-acao");
        manterStatusInscricao(acao, id);
    });
});
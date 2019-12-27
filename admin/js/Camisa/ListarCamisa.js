$(function () {

    var dados = constantes();
    var home = $("#home").attr('data-val');
    var urlValida = home + 'admin/Controller/Ajax.Controller.php';
    var upload = dados['PASTAUPLOADS'];

    // CARREGA MODAL DE FOTOS DA CAPA DO PRODUTO
    $(".fotos").click(function () {
        var id = $(this).attr("id");
        var title = $(this).attr("title");
        $(".foto .modal-body.modal-body img").attr("src", "");
        $.ajax({
            url: urlValida,
            data: {valida: "foto_camisa", id: id},
            type:   "get",
            dataType:"json",
            beforeSend: function () {
                $("#load").click();
            },
            success: function (data) {
                $("#carregando .cancelar").click();
                if (data.caminho) {
                    $(".foto .modal-header .modal-title").text(title);
                    $(".foto .modal-body.modal-body img").attr("src", home +
                        upload + "Camisa/" + data.caminho);
                    $("#fotos").click();
                } else {
                    Funcoes.Alerta(Funcoes.MSG04);
                }
            }
        });
    });

});
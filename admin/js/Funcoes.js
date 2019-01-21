var Funcoes = function () {
    var inicio = function () {


        $("#ds_pastoral_ativo").change(function () {
            disabilitaCamposRetiro();
        });

        // CADASTRO De Retiro de Carnaval
        function disabilitaCamposRetiro() {
            if ($("#ds_pastoral_ativo").prop('checked')) {
                $("#ds_pastoral").parent(".form-group").slideDown("slow");
            } else {
                $("#ds_pastoral").parent(".form-group").slideUp("fast");
            }
        }

        disabilitaCamposRetiro();

        // Valida data
        $("#dt_nascimento").change(function () {
            var idade = 15; // Idade limite para aceitar o cadastro Maior que a Idade
            var nascimento = $(this).val();
            var partesData = nascimento.split("/");
            var validaNascimento = new Date((parseInt(partesData[2]) + idade), partesData[1] - 1, partesData[0]);

            if (validaNascimento > new Date()) {
                Funcoes.Alerta(Funcoes.MSG01);
                $(this).val("");
                $(".dt_nascimento").parent(".form-group").addClass('has-error').removeClass('has-success');
                $('span#dt_nascimento-info').text("Para maiores de " + idade + " anos");
                return false;
            }
        });
    };
    return {
        init: function () {
            inicio();
        },
        Modal: function (msg, classe, cor, icone, titulo) {
            $(".aviso .modal-header").removeClass().addClass("modal-header btn btn-" + classe);
            $(".aviso #icone").removeClass().addClass("btn btn-" + cor);
            $(".aviso i").removeClass().addClass("fa " + icone);
            $(".aviso .modal-header .modal-title").text(titulo);
            $(".aviso #confirmacao_msg b").html(msg);
            $("#aviso").click();
            //Função de subir a página ao topo
            $("html, body").animate({
                scrollTop: 0
            }, "slow");
        },
        Sucesso: function (msg) {
            Funcoes.Modal(msg, "success", "green", "fa-check", "SUCESSO");
        },
        Alerta: function (msg) {
            Funcoes.Modal(msg, "warning", "yellow", "fa-exclamation-triangle", "ALERTA");
        },
        Informativo: function (msg) {
            Funcoes.Modal(msg, "info", "primary", "fa-info-circle", "INFORMATIVO");
        },
        Erro: function (msg) {
            Funcoes.Modal(msg, "bricky", "bricky", "fa-frown-o", "Erro");
        },

        MSG_CONFIRMACAO: "CONFIRMAÇÃO",

        MSG01: "Sua Idade Não é Permitida. Idade Mínima de 15 anos",
        MSG02: "Ano de publicação não pode ser maior que o ano atual.",
        MSG03: "Ano de publicação não pode ser menor que o ano de 1950.",
        MSG04: "Livro sem Foto de Capa"

    };
}();


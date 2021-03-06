$(function () {
    var idade = 15; // Idade limite para aceitar o cadastro Maior que a Idade
    var MSG01 = "Não é permitido a participação para menores de " + idade + " anos";


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
    $('span#dt_nascimento-info').text("Para maiores de " + idade + " anos");

    // Valida data
    $("#dt_nascimento").change(function () {
        var nascimento = $(this).val();
        var partesData = nascimento.split("/");
        var validaNascimento = new Date((parseInt(partesData[2]) + idade), partesData[1] - 1, partesData[0]);

        if (validaNascimento > new Date()) {
            Funcoes.Alerta(MSG01);
            $(this).val("");
            $(".dt_nascimento").parent(".form-group").addClass('has-error').removeClass('has-success');
            $('span#dt_nascimento-info').text("Para maiores de " + idade + " anos");
            return false;
        }
    });
});
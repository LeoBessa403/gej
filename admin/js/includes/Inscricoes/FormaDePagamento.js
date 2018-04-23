$(function () {
    //VARIÁVEIS GLOBAIS
    var dados = constantes();

    var home = dados['HOME'];
    var urlValida = home + 'admin/Class/PagSeguro.class.php';

  $('#co_tipo_pagamento').change(function () {
      if($(this).val() == 2){
          $('#pagarAgora').show();
      }else{
          $('#pagarAgora').hide();
      }
  });
  $('#pagarAgora').hide();

    $('#pagarAgora').click(function () {
        var coInscricao =  $('#co_inscricao').val();
        $.post(urlValida,{'co_inscricao' : coInscricao },function(data){
            $('#code').val(data);
            $('#comprar').submit();
        })
    })

});
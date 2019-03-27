$(function () {
    setTimeout(
        function(){
            var dados = constantes();
            location.href=dados['HOME'] + 'web/IndexWeb/Index';
        }, 10000);
});
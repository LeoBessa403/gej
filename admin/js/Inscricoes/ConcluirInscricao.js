$(function () {
    setTimeout(
        function(){
            var home = $("#home").attr('data-val');
            location.href=home + 'web/IndexWeb/Index';
        }, 10000);
});
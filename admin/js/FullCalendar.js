var Calendar = function () {
    //function to initiate Full CAlendar
    var runCalendar = function () {
        var $modal = $('#event-management');
        $('#event-categories div.event-category').each(function () {
            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text() + " Novo") // use the element's text as the event title
            };
            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);
            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true, // will cause the event to go back to its
                revertDuration: 50 //  original position after the drag
            });
        });
        /* initialize the calendar
				 -----------------------------------------------------------------*/
        //VARIÁVEL GLOBAL
        var dados = constantes();

        var home = dados['HOME'];
        var urlCarregaTarefa = home + 'admin/Controller/AgendaCarrega.Controller.php';
        var urlValida = home + 'admin/Controller/Ajax.Controller.php';

        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        var form = '';

        $(".remove-evento").click(function () {
            $(this).attr("id", $modal.find('#co_agenda').val());
            $(".deleta_registro .btn-success").attr('id', $modal.find('#co_agenda').val());
        })


        var calendar = $('#calendar').fullCalendar({
            buttonText: {
                prev: '<i class="fa fa-chevron-left"></i>',
                next: '<i class="fa fa-chevron-right"></i>'
            },
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'month,agendaWeek,agendaDay'
            },
            drop: function (date, allDay) { // this function is called when something is dropped
                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');
                var $categoryClass = $(this).attr('data-class');
                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);
                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                if ($categoryClass)
                    copiedEventObject['className'] = [$categoryClass];
                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
                // is the "remove after drop" checkbox checked?
//                if ($('#drop-remove').is(':checked')) {
//                    // if so, remove the element from the "Draggable Events" list
//                    $(this).remove();
//                }
            },
            events: urlCarregaTarefa,
            editable: true,
            droppable: true, // this allows things to be dropped onto the calendar !!!
            selectable: true,
            timeFormat: 'H:mm',
            selectHelper: true,
            select: function (start) {
                var dia = start.getDate();
                var mes = (start.getMonth() + 1);
                var hora_inicio = '20-00';
                var dt_inicio;
                var hora = start.getHours();
                var minuto = start.getMinutes();

                if (dia < 10) {
                    dia = '0' + dia;
                }
                if (mes < 10) {
                    mes = '0' + mes;
                }

                if (hora < 10) {
                    hora = '0' + hora;
                }
                if (minuto < 10) {
                    minuto = '0' + minuto;
                }
                if (hora > 0) {
                    hora_inicio = hora + '-' + minuto;
                }
                dt_inicio = dia + '-' + mes + '-' + start.getFullYear();
                $.get(urlValida, {valida: 'cadastro_agenda', dt_inicio: dt_inicio, hr_inicio: hora_inicio},
                    function (retorno) {
                        window.location.href = retorno;
                    });

            },
            eventClick: function (calEvent) {
                if (calEvent.id) {
                    $.get(urlValida, {valida: 'pesquisa_agenda', co_agenda: calEvent.id},
                        function (retorno) {
                            window.location.href = retorno;
                        });
                } else {
                    var time = calEvent.start;
                    var dia = time.getDate();
                    var mes = (time.getMonth() + 1);
                    var hora_inicio = '20-00';
                    var dt_inicio;
                    if (dia < 10) {
                        dia = '0' + dia;
                    }
                    if (mes < 10) {
                        mes = '0' + mes;
                    }
                    dt_inicio = dia + '-' + mes + '-' + time.getFullYear();

                    $.get(urlValida, {valida: 'cadastro_agenda', dt_inicio: dt_inicio, hr_inicio: hora_inicio},
                        function (retorno) {
                            window.location.href = retorno;
                        });
                }
            }
        });
    };
    return {
        init: function () {
            runCalendar();
        },
        limpaForm: function () {
            var $modal = $('#event-management');

            $modal.find('#dt_inicio').val('');
            $modal.find('#hr_inicio').val('');
            $modal.find('#dt_fim').val('');
            $modal.find('#hr_fim').val('');

            $modal.find('#ds_titulo').val('');
            $modal.find('#co_agenda').val('');
            $modal.find('#ds_descricao').val('');

            $modal.find("#co_evento").val('').attr('selected', true);
            $modal.find('.select2-chosen:eq(0)').text('Selecione uma Evento');

            $modal.find("#co_categoria_agenda").val('').attr('selected', true);
            $modal.find('.select2-chosen:eq(1)').text('Selecione uma Categoria');

            $modal.find(".select2-search-choice").hide();
            $modal.find("#co_perfil option").each(function () {
                $(this).attr('selected', false);
            });

            $modal.find('#st_status').val('');
            $modal.find('#dt_cadastro').val('');

            $modal.find('.has-error').each(function () {
                $(this).removeClass('has-error');
            });
            $modal.find('.has-success').each(function () {
                $(this).removeClass('has-success');
            });

        }
    };
}();
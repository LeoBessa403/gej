var TableData = function () {
    //function to initiate DataTable
    //DataTable is a highly flexible tool, based upon the foundations of progressive enhancement, 
    //which will add advanced interaction controls to any HTML table
    //For more information, please visit https://datatables.net/
    var runDataTable = function () {
        var oTable = $('.table').dataTable({
            "aoColumnDefs": [{
                "aTargets": [0]
            }],
            "oLanguage": {
                "sLengthMenu": "Registros _MENU_",
                "sSearch": "",
                "sInfoFiltered": "(Filtrado(s) de _MAX_ no total)",
                "oPaginate": {
                    "sPrevious": "",
                    "sNext": ""
                }
            },
            "aaSorting": [],
            "aLengthMenu": [
                [5, 10, 15, 20, -1],
                [5, 10, 15, 20, "Todos"] // change per page values here
            ],
            // set the initial value
            "iDisplayLength": 10,
        });
        $('#sample_1_wrapper .dataTables_filter input').addClass("form-control input-sm").attr("placeholder", "Pesquisar..");
        // modify table search input
        $('#sample_1_wrapper .dataTables_length select').addClass("m-wrap small");
        // modify table per page dropdown
//        $('#sample_1_wrapper .dataTables_length select').select2();
//        // initialzie select2 dropdown
//        $('#sample_1_column_toggler input[type="checkbox"]').change(function () {
//            /* Get the DataTables object again - this is not a recreation, just a get of the object */
//            var iCol = parseInt($(this).attr("data-column"));
//            var bVis = oTable.fnSettings().aoColumns[iCol].bVisible;
//            oTable.fnSetColumnVis(iCol, (bVis ? false : true));
//        });
    };
    return {
        //main function to initiate template pages
        init: function () {
            runDataTable();
        }
    };
}();
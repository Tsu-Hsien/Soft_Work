var TableAdvanced = function () {

    var initTable1 = function() {

        var nCloneTh = document.createElement( 'th' );
        var nCloneTd = document.createElement( 'td' );
        nCloneTd.innerHTML = '<span class="row-details row-details-close"></span>';
         
        /*
         * Initialize #data_table_1
         */
        var oTable = $('#data_table_1').dataTable( {
            "aoColumnDefs": [
                {"bSortable": false, "aTargets": [ 0 ] }
            ],
            "aaSorting": [[1, 'asc']],
             "aLengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "All"] // change per page values here
            ],
            "iDisplayLength": 10,
        });

        jQuery('#data_table_1_wrapper .dataTables_filter input').addClass("form-control input-small"); // modify table search input
        jQuery('#data_table_1_wrapper .dataTables_length select').addClass("form-control input-small"); // modify table per page dropdown
         
        $('#data_table_1').on('click', ' tbody td .row-details', function () {
            var nTr = $(this).parents('tr')[0];
            if ( oTable.fnIsOpen(nTr) )
            {
                $(this).addClass("row-details-close").removeClass("row-details-open");
                oTable.fnClose( nTr );
            }
            else
            {
                $(this).addClass("row-details-open").removeClass("row-details-close");
                oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
            }
        });
		
        /*
         * Initialize #data_table_2
         */
        var oTable = $('#data_table_2').dataTable( {
            "aoColumnDefs": [
                {"bSortable": false, "aTargets": [ 0 ] }
            ],
            "aaSorting": [[1, 'asc']],
             "aLengthMenu": [
                [5, 15, 20, -1],
                [5, 15, 20, "All"] // change per page values here
            ],
            "iDisplayLength": 10,
        });

        jQuery('#data_table_2_wrapper .dataTables_filter input').addClass("form-control input-small"); // modify table search input
        jQuery('#data_table_2_wrapper .dataTables_length select').addClass("form-control input-small"); // modify table per page dropdown
         
        $('#data_table_2').on('click', ' tbody td .row-details', function () {
            var nTr = $(this).parents('tr')[0];
            if ( oTable.fnIsOpen(nTr) )
            {
                $(this).addClass("row-details-close").removeClass("row-details-open");
                oTable.fnClose( nTr );
            }
            else
            {
                $(this).addClass("row-details-open").removeClass("row-details-close");
                oTable.fnOpen( nTr, fnFormatDetails(oTable, nTr), 'details' );
            }
        });
    }

    return {

        //main function to initiate the module
        init: function () {
            
            if (!jQuery().dataTable) {
                return;
            }

            initTable1();
        }

    };

}();
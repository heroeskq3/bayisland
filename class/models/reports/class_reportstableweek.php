<?php
function class_reportsTableWeek($array, $params)
{
    $limit = 10;
    if (isset($_GET['limit'])) {
        $limit = $_GET['limit'];
    }
    $resume = null;
    if (isset($_GET['resume'])) {
        $resume = $_GET['resume'];
    }

    $results = null;

    $results .= '<link href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css" rel="stylesheet">';
    $results .= '<link href="https://cdn.datatables.net/buttons/1.5.1/css/buttons.bootstrap.min.css" rel="stylesheet">';

    if ($array) {
        $results .= class_resportsWeek($array,$params['title']);
    } else {
        $results .= 'No hay resultados para esta busqueda';
    }

    $results .= '<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>';

    $results .= '<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/buttons/1.5.1/js/dataTables.buttons.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.bootstrap.min.js"></script>';
    $results .= '<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>';
    $results .= '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>';
    $results .= '<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.html5.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.print.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/buttons/1.5.1/js/buttons.colVis.min.js"></script>';

    $results .= "<script>
        $(document).ready(function() {
            var table = $('#example').DataTable( {
                responsive: {
                    buttons: true
                },
                order: [],
                lengthChange: false,
                searching: true,
                buttons: [
                    { extend: 'colvis', text: 'Mostrar' },
                    { extend: 'excel', text: 'Excel' },
                    { extend: 'pdf', text: 'PDF' },
                    { extend: 'print', text: 'Imprimir', exportOptions: {stripHtml: false}},";









    $results .= "],
                language: {
                    'lengthMenu': '" . LANG_SHOWING . " _MENU_ " . LANG_RECORDS . " " . LANG_PERPAGE . "',
                    'zeroRecords': '" . LANG_NOFOUND . "',
                    'info': '" . LANG_SHOW . " " . LANG_PAGE . " _PAGE_ " . LANG_FROM . " _PAGES_ " . LANG_TOTAL . " _MAX_ " . LANG_RECORDS . "',
                    'infoEmpty': '" . LANG_NORESULTS . "',
                    'infoFiltered': '(" . LANG_FILTERED . " _MAX_ " . LANG_RECORDS . ")',
                    sSearch: '" . LANG_SEARCH . "',
                    paginate: {
                      next: '" . LANG_NEXT . "',
                      previous: '" . LANG_PREVIOUS . "'
                    }
                  },";

    if ($params['hidecols'] && !$resume) {
        $results .= "'columnDefs' : [
                    { 'visible': false, 'targets': [" . $params['hidecols'] . "] }
                ],";
    }

    $results .= "pageLength: " . $limit . "

            } );

            table.buttons().container()
                .appendTo( '#example_wrapper .col-sm-6:eq(0)' );
        } );
    </script>";

    return $results;
}

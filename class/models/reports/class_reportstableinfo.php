<?php
function class_reportsTableInfo($array, $params)
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
    $results .= '<link href="https://cdn.datatables.net/select/1.2.5/css/select.bootstrap.min.css" rel="stylesheet">';

    if ($array) {
        $results .= '<div class="table-responsive">';
        $results .= '<table id="example" class="table table-striped table-hover table-bordered nowrap" style="width:100%">';
        $results .= '<thead>';

        if ($array) {
            $array_key = array_keys(current($array));
        }

        $results .= '</thead>';
        $results .= '<tbody>';

        foreach ($array as $row_array) {

            //values
            foreach ($array_key as $key) {
                if (($key !== 'index') && ($key !== 'status') && ($key !== 'childs') && ($key !== 'context')) {

                    if ($resume) {
                        $results .= '<tr>';
                        $results .= '<td>';
                        $results .= $key;
                        $results .= '</td>';
                        $results .= '<td>';
                        $results .= $row_array[$key];
                        $results .= '</td>';
                        $results .= '</tr>';
                    }
                }
            }
        } //end key foreach

        $results .= '</tbody>';
        $results .= '</table>';
        $results .= '</div>';
    } else {
        $results .= 'No hay resultados para esta busqueda';
    }

    $results .= '<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>';
    $results .= '<script src="https://cdn.datatables.net/select/1.2.5/js/dataTables.select.min.js"></script>';

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
                select: 'single',
                responsive: {
                    buttons: true
                },
                lengthChange: false,
                searching: true,
                buttons: [
                    { extend: 'colvis', text: 'Mostrar' },
                    { extend: 'excel', text: 'Excel' },
                    { extend: 'pdf', text: 'PDF' },
                    { extend: 'print', text: 'Imprimir' },";

    //add action button
    if (isset($params['add']) && !$resume) {
        $results .= "
        { text: '" . LANG_ADD . "',
            action: function ( e, dt, button, config ) {
                window.location = '" . $params['add'] . "?action=add';
            }
        },
        ";
    }

    //edit action button
    if (isset($params['edit']) && !$resume) {
        $results .= "
        { text: '" . LANG_EDIT . "',
            action: function ( e, dt, button, config ) {
                  var ids = $.map(dt.rows('.selected').data(), function (item) {
                    return item[0]
                    });
                    window.location = '" . $params['edit'] . "?action=update&Id='+ids;
            }
        },
        ";
    }

    //delete action button
    if (isset($params['delete']) && !$resume) {
        $results .= "
        { text: '" . LANG_DELETE . "',
            action: function ( e, dt, button, config ) {
                var ids = $.map(dt.rows('.selected').data(), function (item) {
                  return item[0]
                  });
                  window.location = '" . $params['delete'] . "?action=delete&Id='+ids;
          }
        },
        ";
    }
    //transfer action button
    if (isset($params['transfer']) && !$resume) {
        $results .= "
        { text: '" . LANG_TRANSFER . "',
            action: function ( e, dt, button, config ) {
                var ids = $.map(dt.rows('.selected').data(), function (item) {
                  return item[0]
                  });
                  window.location = '" . $params['transfer'] . "?action=transfer&Id='+ids;
          }
        },
        ";
    }
    //schedule action button
    if (isset($params['schedule']) && !$resume) {
        $results .= "
        { text: '" . LANG_VISIT . "',
            action: function ( e, dt, button, config ) {
                var ids = $.map(dt.rows('.selected').data(), function (item) {
                  return item[0]
                  });
                  window.location = '" . $params['schedule'] . "?action=add&Id='+ids;
          }
        },
        ";
    }
    //finished action button
    if (isset($params['finished']) && !$resume) {
        $results .= "
        { text: '" . LANG_FINISHED . "',
            action: function ( e, dt, button, config ) {
                var ids = $.map(dt.rows('.selected').data(), function (item) {
                  return item[0]
                  });
                  window.location = '" . $params['finished'] . "?Id='+ids;
          }
        },
        ";
    }

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

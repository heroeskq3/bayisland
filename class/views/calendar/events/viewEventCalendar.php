<?php
$UsersId = $_SESSION['UserId'];

$calendareventslist = class_calendarEventsList($UsersId);
$events             = $calendareventslist['response'];

$calendartypeslist = class_calendarTypesList();
?>
    <!-- FullCalendar -->
    <link href='assets/calendar/css/fullcalendar.css' rel='stylesheet' />

    <!-- Custom CSS -->
    <style>
    #calendar {
        max-width: 800px;
    }
    .col-centered{
        float: none;
        margin: 0 auto;
    }
    </style>

    <!-- Page Content -->
        <div id="calendar" class="col-centered">
        </div>
        <!-- Modal -->
        <div class="modal fade" id="ModalAdd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
            <form class="form-horizontal" method="POST" action="schedule_calendar.php?action=addEvent">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Agregar Evento</h4>
              </div>
              <div class="modal-body">

                  <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">Titulo</label>
                    <div class="col-sm-10">
                      <input type="text" name="title" class="form-control" id="title" placeholder="Titulo">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="color" class="col-sm-2 control-label">Tipo</label>
                    <div class="col-sm-10">
                      <select name="TypeId" class="form-control" id="color">
                          <option value="">Seleccionar</option>
                        <?php foreach ($calendartypeslist['response'] as $key => $row_calendartypeslist) {?>
                          <option style="color:<?php echo $row_calendartypeslist['Color'] ?>;" value="<?php echo $row_calendartypeslist['Id'] ?>">&#9724; <?php echo $row_calendartypeslist['Name'] ?></option>
                        <?php }?>
                        </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="start" class="col-sm-2 control-label">Fecha Inicial</label>
                    <div class="col-sm-10">
                      <input type="text" name="start" class="form-control" id="start" readonly>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="end" class="col-sm-2 control-label">Fecha Final</label>
                    <div class="col-sm-10">
                      <input type="text" name="end" class="form-control" id="end" readonly>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="Details" class="col-sm-2 control-label">Detalles</label>
                    <div class="col-sm-10">
                      <input type="textarea" name="Details" class="form-control" id="Details" placeholder="Detalles">
                    </div>
                  </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-info" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
              </div>
            </form>
            </div>
          </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="ModalEdit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
            <form class="form-horizontal" method="POST" action="schedule_calendar.php?action=editEventTitle">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Modificar Evento</h4>
              </div>
              <div class="modal-body">

                  <div class="form-group">
                    <label for="title" class="col-sm-2 control-label">Titulo</label>
                    <div class="col-sm-10">
                      <input type="text" name="title" class="form-control" id="title" placeholder="Titulo">
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="color" class="col-sm-2 control-label">Tipo</label>
                    <div class="col-sm-10">
                      <select name="TypeId" class="form-control" id="TypeId">
                          <option value="">Seleccionar</option>
                        <?php foreach ($calendartypeslist['response'] as $key => $row_calendartypeslist) {?>
                          <option style="color:<?php echo $row_calendartypeslist['Color'] ?>;" value="<?php echo $row_calendartypeslist['Id'] ?>">&#9724; <?php echo $row_calendartypeslist['Name'] ?></option>
                        <?php }?>
                        </select>
                    </div>
                  </div>

                  <div class="form-group">
                    <label for="Details" class="col-sm-2 control-label">Detalles</label>
                    <div class="col-sm-10">
                      <input type="textarea" name="Details" class="form-control" id="Details" placeholder="Detalles">
                    </div>
                  </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                          <div class="checkbox">
                            <label class="text-danger"><input type="checkbox"  name="delete"> Eliminar Evento</label>
                          </div>
                        </div>
                    </div>

                  <input type="hidden" name="id" class="form-control" id="id">
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary">Guardar</button>
              </div>
            </form>
            </div>
          </div>
        </div>
    <!-- /.container -->

    <!-- jQuery Version 1.11.1 -->
<!--
    <script src="calendar/js/jquery.js"></script>
-->

    <!-- Bootstrap Core JavaScript -->
<!--     <script src="calendar/js/bootstrap.min.js"></script>
 -->
    <!-- FullCalendar -->
    <script src='assets/calendar/js/moment.min.js'></script>
    <script src='assets/calendar/js/fullcalendar/fullcalendar.min.js'></script>
    <script src='assets/calendar/js/fullcalendar/fullcalendar.js'></script>
    <script src='assets/calendar/js/fullcalendar/locale/es.js'></script>
    <script>
    $(document).ready(function() {
       var date = new Date();
       var yyyy = date.getFullYear().toString();
       var mm = (date.getMonth()+1).toString().length == 1 ? "0"+(date.getMonth()+1).toString() : (date.getMonth()+1).toString();
       var dd  = (date.getDate()).toString().length == 1 ? "0"+(date.getDate()).toString() : (date.getDate()).toString();

        $('#calendar').fullCalendar({
            header: {
                 language: 'es',
                left: 'prev,next today',
                center: 'title',
                right: 'month,basicWeek,basicDay',

            },
            defaultDate: yyyy+"-"+mm+"-"+dd,
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            selectable: true,
            selectHelper: true,
            select: function(start, end) {

                $('#ModalAdd #start').val(moment(start).format('YYYY-MM-DD HH:mm:ss'));
                $('#ModalAdd #end').val(moment(end).format('YYYY-MM-DD HH:mm:ss'));
                $('#ModalAdd').modal('show');
            },
            eventRender: function(event, element) {
                element.bind('dblclick', function() {
                    $('#ModalEdit #id').val(event.id);
                    $('#ModalEdit #title').val(event.title);
                    $('#ModalEdit #color').val(event.color);
                    $('#ModalEdit #TypeId').val(event.TypeId);
                    $('#ModalEdit #Details').val(event.Details);
                    $('#ModalEdit').modal('show');
                });
            },
            eventDrop: function(event, delta, revertFunc) { // si changement de position

                edit(event);

            },
            eventResize: function(event,dayDelta,minuteDelta,revertFunc) { // si changement de longueur

                edit(event);

            },
            events: [
            <?php if ($calendareventslist['rows']) {
    ?>

            <?php foreach ($events as $event):

        $start = explode(" ", $event['start']);
        $end   = explode(" ", $event['end']);
        if ($start[1] == '00:00:00') {
            $start = $start[0];
        } else {
            $start = $event['start'];
        }
        if ($end[1] == '00:00:00') {
            $end = $end[0];
        } else {
            $end = $event['end'];
        }
        ?>
                                      {
                                          id: '<?php echo $event['id']; ?>',
                                          title: '<?php echo $event['title']; ?>',
                                          start: '<?php echo $start; ?>',
                                          end: '<?php echo $end; ?>',
                                          color: '<?php echo $event['color']; ?>',
                                          TypeId: '<?php echo $event['TypeId']; ?>',
                                          Details: '<?php echo $event['Details']; ?>',
                                      },
                                  <?php endforeach;?>
                          <?php } // end if?>
            ]
        });

        function edit(event){
            start = event.start.format('YYYY-MM-DD HH:mm:ss');
            if(event.end){
                end = event.end.format('YYYY-MM-DD HH:mm:ss');
            }else{
                end = start;
            }

            id =  event.id;

            Event = [];
            Event[0] = id;
            Event[1] = start;
            Event[2] = end;

            $.ajax({
             url: 'schedule_calendar.php?action=editEventDate',
             type: "POST",
             data: {Event:Event},
             success: function(rep) {
                    if(rep == 'OK'){
                        alert('Evento se ha guardado correctamente');
                    }else{
                      alert('Evento se ha guardado correctamente');
                        //alert('No se pudo guardar. Inténtalo de nuevo.');
                    }
                }
            });
        }
    });
</script>
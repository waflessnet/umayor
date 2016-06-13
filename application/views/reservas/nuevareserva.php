
<style type="text/css">
  legend {

    color: #fff;
  }
  label{

    color: #fff;
    
  }

</style>
<body>
<div class="animated bounceInDown ng-scope">
<div class="col-sm-2"></div>
<div class="col-sm-8 form-box">
        <div class="form-top">
                <div class="form-top-left">
                    <h3>Reservas</h3>
                        <p>Administracion y estadisticas </p>
                    </div>
                    <div class="form-top-right">
                            <i class="fa fa-cogs"></i>
                        </div>
                    </div>
    <div class="form-bottom">
        <div class"row" ng-controller="reserva">
<form class="form-horizontal" action="/formulario/nuevareserva" method="POST">
<fieldset>

<!-- Form Name -->
<legend>Reserva</legend>
<!-- Text input-->
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="telefono">Día reserva</label>  
  <div class="col-md-4">
  <p class="input-group">
  <input type="text" class="form-control" uib-datepicker-popup="{{format}}" ng-model="dt" is-open="popup1.opened" datepicker-options="dateOptions" ng-required="true" close-text="Close" alt-input-formats="altInputFormats" name="fecha" />
          <span class="input-group-btn">
            <button type="button" class="btn btn-default" ng-click="open1()"><i class="glyphicon glyphicon-calendar"></i></button>
          </span>


</p>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="paterno">Empleado</label>  
  <div class="col-md-5">
   <select class="form-control" id="sel1" name="empleado">
    <option value="-1" >Seleccione un empleado </option>
    <?php for($x=0;$x < count($empleados);$x++){ ?>
        <option value="<?php echo $empleados[$x]->idempleado; ?>"><?php echo $empleados[$x]->nombre; ?></option>
    <?php } ?>

  </select>
    
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label" for="paterno">Tipo solicitud</label>  
  <div class="col-md-5">
   <select class="form-control" id="sel1" name="tipo">
    <option value="-1" >Seleccione Tipo reserva </option>

    <?php for($x=0;$x < count($solicitud);$x++){ ?>
        <option value="<?php echo $solicitud[$x]->idtipo_solicitud; ?>"><?php echo $solicitud[$x]->nombre_solicitud; ?></option>
    <?php } ?>

  </select>
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="paterno">Hoario</label>  
  <div class="col-md-5">
   <select class="form-control" id="sel1" name="bloque">
    <option value="-1" >Seleccione un bloque horario </option>

    <?php for($x=0;$x < count($bloque);$x++){ ?>
        <option value="<?php echo $bloque[$x]->idbloque_horario; ?>"><?php echo $bloque[$x]->hora_ini." - ".$bloque[$x]->hora_fin; ?></option>
    <?php } ?>

  </select>
    
  </div>
</div>
<div class="form-group pull-right">
 <button type="submit" class="btn btn-success">Guardar</button>
</div>

<!-- Text input-->
<!-- Text input-->


<!-- Text input-->


</fieldset>
</form>

</div>
        </div>
        <div class="row">
                <div class="col-sm-2 pull-right rounded logout">
                    <a type="button" style="color: #4646E8;" href="/logout">Logout</a>
                </div>
        </div>
        </div>
</div>
</body>






















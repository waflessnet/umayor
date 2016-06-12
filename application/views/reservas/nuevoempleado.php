
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
                  <h3>Reservas Todas Novias</h3>
                  <p>Administración y estadísticas </p>
                </div>
                    <div class="form-top-right">
                            <i class="fa fa-cogs"></i>
                        </div>
                    </div>
    <div class="form-bottom">
        <div class"row" ng-controller="reserva">
<div class"row">
<form class="form-horizontal" action="/formulario/nuevocliente" method="POST" ng-controller="nuevoClienteCtrl">
<fieldset>
<?php if(isset($resultado)){ ?>
<div class="alert alert-warning alert-dismissible" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>!<?php echo $resultado ?></strong>
</div>

<?php  }else{ ?>
<!-- Form Name -->
<legend>Nuevo Cliente</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="nombre">Nombre</label>  
  <div class="col-md-5">
  <input id="nombre" name="nombre" type="text" placeholder="Nombre" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="paterno">Paterno</label>  
  <div class="col-md-4">
  <input id="paterno" name="paterno" type="text" placeholder="Apellido Paterno" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="materno">Materno</label>  
  <div class="col-md-4">
  <input id="materno" name="materno" type="text" placeholder="Apellido Materno" class="form-control input-md" required="">
    
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" for="telefono">Fecha Nacimiento</label>  
  <div class="col-md-4">
  <p class="input-group">
  <input type="text" class="form-control" uib-datepicker-popup="{{format}}" ng-model="dt" is-open="popup1.opened" datepicker-options="dateOptions" ng-required="true" close-text="Close" alt-input-formats="altInputFormats" name="nacimiento"/>
          <span class="input-group-btn">
            <button type="button" class="btn btn-default" ng-click="open1()"><i class="glyphicon glyphicon-calendar"></i></button>
          </span>


</p>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="telefono">Telefono</label>  
  <div class="col-md-4">
  <input id="telefono" name="telefono" type="number" placeholder="Telefono" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="email" placeholder="Email" class="form-control input-md" required=""  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="direccion">Direccion</label>  
  <div class="col-md-5">
  <input id="direccion" name="direccion" type="text" placeholder="Direccion" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="sexo">Sexo</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="sexo-0">
      <input type="radio" name="sexo" id="sexo-0" value="M" checked="checked">
      M
    </label> 
    <label class="radio-inline" for="sexo-1">
      <input type="radio" name="sexo" id="sexo-1" value="F">
      F
    </label>
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="rut">Rut</label>  
  <div class="col-md-4">
  <input id="rut" name="rut" type="number" placeholder="Rut" class="form-control input-md" required="">
    
  </div>
<div class="col-md-2">
  <input id="dv" name="dv" type="text" placeholder="DV" class="form-control input-md" required="">
    
  </div>

</div>
<div class="form-group pull-right">
 <button type="submit" class="btn btn-success">Guardar</button>
</div>

<!-- Text input-->


</fieldset>
<?php } ?>
</form>

</div>

</div>
        </div>
        <div class="row">
        <div class="col-sm-2 pull-right rounded logout"> <a type="button" style="color: #4646E8;" href="/reservas/panel?">Menú Inicial</a></div>
        </div>
        </div>
</div>
</body>










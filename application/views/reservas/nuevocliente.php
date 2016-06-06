
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
<div class"row">
<form class="form-horizontal">
<fieldset>

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

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="telefono">Telefono</label>  
  <div class="col-md-4">
  <input id="telefono" name="telefono" type="text" placeholder="Telefono" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-4">
  <input id="email" name="email" type="text" placeholder="Email" class="form-control input-md" required="">
    
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
  <input id="rut" name="rut" type="text" placeholder="Rut" class="form-control input-md" required="">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="dv">DV</label>  
  <div class="col-md-2">
  <input id="dv" name="dv" type="text" placeholder="" class="form-control input-md" required="">
    
  </div>
</div>

</fieldset>
</form>

</div>

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











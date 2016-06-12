
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
                  <p>Administracion y estadisticas </p>
                    </div>
                    <div class="form-top-right">
                            <i class="fa fa-cogs"></i>
                        </div>
                    </div>
    <div class="form-bottom">
        <div class"row" ng-controller="reserva">
<form class="form-horizontal">
<fieldset>

<div class="row">
<div class="col-lg-6 col-sm-12"  ng-controller="LineCtrl" style="background-color: #fff;border-radius: 10px;">
                <canvas id="line" class="chart chart-line" chart-data="data"
                  chart-labels="labels" chart-legend="true" chart-series="series"
                  chart-click="onClick"  >
                </canvas>               



</div>
<div class="col-lg-1 col-sm-1"></div>
<div class="col-lg-5 col-sm-12"  ng-controller="DoughnutCtrl" style="background-color: #fff;border-radius: 10px;">
<canvas id="doughnut" class="chart chart-doughnut"
  chart-data="data" chart-labels="labels">
</canvas> 
</div>
</div>

<div class="row">
<div class="col-lg-12 col-sm-12"  ng-controller="BarCtrl" style="background-color: #fff;border-radius: 10px;margin-top: 10px;">
<canvas id="bar" class="chart chart-bar"
  chart-data="data" chart-labels="labels"> chart-series="series"
</canvas>
</div>
</div>
<!-- Text input-->


<!-- Text input-->


</fieldset>
</form>

</div>
        </div>
        <div class="row">
                <div class="col-sm-2 pull-right rounded logout">
                    <a type="button" style="color: #4646E8;" href="/reservas/panel?">Menú Principal</a>
                </div>
        </div>
        </div>
</div>
</body>

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
        <form role="form" action="" method="post" class="registration-form ng-pristine ng-valid" name="solForm">
            <div class="row">       
                <div class="col-sm-2"></div>
                <a class="col-sm-4 rounded uno" ui-sref="programar" href="/reservas/nuevareserva">
                        <span style="font-size: 60px;">
                                <i class="fa fa-pencil"></i>
                        </span>
                </a>
                <a class="col-sm-4 rounded dos" ui-sref="actividad" href="/reservas/nuevocliente">
                        <span style="font-size:60px;">
                            <i class="fa fa-user-plus"></i>
                        </span>
                </a>
            </div>
            <div class="row">       
                <div class="col-sm-2"></div>

                <div class="col-sm-4 rounded tres" ui-sref="usuario" href="#/Usuario">
                    <span style="font-size:60px;">
                        <i class="fa fa-sliders"></i> 
                    </span>

                </div>
                <a class="col-sm-4 rounded cuatro" ui-sref="grafico" href="/reservas/graficos">
                        <span style="font-size:60px">
                            <i class="fa fa-area-chart"></i>
                        </span>
                </a>
            </div>
	<div class="row">       
                <div class="col-sm-2"></div>
                <a class="col-sm-4 rounded uno" ui-sref="programar" href="/reservas/listareservas">
                        <span style="font-size: 60px;">
                                <i class="fa fa-calendar-plus-o"></i>
                        </span>
                </a>
                <a class="col-sm-4 rounded dos" ui-sref="actividad" href="/reservas/nuevocliente">
                        <span style="font-size:60px;">
                            <i class="fa fa-table"></i>
                        </span>
                </a>
            </div>


        </form>
        </div>
        <div class="row">
                <div class="col-sm-2 pull-right rounded logout">
                    <a type="button" style="color: #4646E8;" href="/logout">Cerrar sesión</a>
                </div>
        </div>
        </div>
</div>
</body>

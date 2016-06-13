<!--div class="container" ng-controller="CalendarCtrl">
<div ui-calendar="uiConfig.calendar" class="span8 calendar" ng-model="eventSources"></div> 
</div-->
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
<form class="form-horizontal">
<fieldset style="background-color:#fff">

<div ng-controller="calendarCtrl as vm" class="col-md-12">
  <ng-include src="'calendarControls.html'"></ng-include>
  <mwl-calendar
    events="vm.events"
    view="vm.calendarView"
    view-date="vm.viewDate">
  </mwl-calendar>
</div>
</fieldset>
</form>
</div>
</div>
<script type="text/ng-template" id="calendarControls.html">
<br>
      <div class="row">

        <div class="col-md-6 text-center">
          <div class="btn-group">

            <button
              class="btn btn-primary"
              mwl-date-modifier
              date="vm.viewDate"
              decrement="vm.calendarView">
              Previous
            </button>
            <button
              class="btn btn-default"
              mwl-date-modifier
              date="vm.viewDate"
              set-to-today>
              Today
            </button>
            <button
              class="btn btn-primary"
              mwl-date-modifier
              date="vm.viewDate"
              increment="vm.calendarView">
              Next
            </button>
          </div>
        </div>

        <br class="visible-xs visible-sm">

        <div class="col-md-6 text-center">
          <div class="btn-group">
            <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'year'">Year</label>
            <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'month'">Month</label>
            <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'week'">Week</label>
            <label class="btn btn-primary" ng-model="vm.calendarView" uib-btn-radio="'day'">Day</label>
          </div>
        </div>

      </div>
      <br>  



</script>
</body>

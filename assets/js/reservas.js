var reserva = angular.module('reservas', ['mwl.calendar', 'ngAnimate','ui.bootstrap','chart.js']);

//calendar
//
//

reserva.controller('calendarCtrl',function(moment,$http,$scope){
 var vm = this;
 var eventsArr = []; 
	$http({
	   method: 'GET',
	   url:'/reservas/jsonreservas',
	   }).success(function(data){
	    (function re(i){
		 if(i>=data.length){
		  return true;
		}
		
		var ini = new Date(data[i].fecha_reserva+' '+data[i].hora_ini);
	        var fin = new Date(data[i].fecha_reserva+' '+data[i].hora_fin);
		if(data[i].es_confirmada =="1"){
		var tipo ='success';
			
		}else{
		var tipo ='warning'
		}
		 vm.events.push({
		  title : data[i].nombre_cliente+' ('+data[i].nombre_solicitud+') - '+data[i].nombre_empleado,
		  startsAt: ini ,
		  endsAt:fin ,
	  	  type:tipo,
		});
		 i=i+1;
		 re(i);	
	     })(0);
	});





//$scope.$applyAsync(function(){
 //events  
//	})	
    /*vm.events = [{
      title: 'No event end date',
      startsAt: moment().hours(3).minutes(0).toDate(),
      type: 'info'
    }, {
      title: 'No event end date',
      startsAt: moment().hours(5).minutes(0).toDate(),
      type: 'warning'
    }];*/

    vm.calendarView = 'month';
    vm.viewDate = new Date();

})



//calendar end




reserva.controller('nuevoClienteCtrl',function($scope){
 $scope.dt = new Date();
  $scope.today = function() {
    $scope.dt = new Date();
  };
  $scope.today();

  $scope.clear = function() {
    $scope.dt = null;
  };

  $scope.inlineOptions = {
    customClass: getDayClass,
    minDate: new Date(),
    showWeeks: true
  };

  $scope.dateOptions = {
    dateDisabled: disabled,
    formatYear: 'yy',
    maxDate: new Date(2020, 5, 22),
    minDate: new Date(),
    startingDay: 1
  };

  // Disable weekend selection
  function disabled(data) {
    var date = data.date,
      mode = data.mode;
    //return mode === 'day' && (date.getDay() === 0 || date.getDay() === 6);
  }

  $scope.toggleMin = function() {
    $scope.inlineOptions.minDate = $scope.inlineOptions.minDate ? null : new Date();
    $scope.dateOptions.minDate = $scope.inlineOptions.minDate;
  };

  $scope.toggleMin();

  $scope.open1 = function() {
    $scope.popup1.opened = true;
  };

  $scope.open2 = function() {
    $scope.popup2.opened = true;
  };

  $scope.setDate = function(year, month, day) {
    $scope.dt = new Date(year, month, day);
  };

  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
  //$scope.format = $scope.formats[0];
  $scope.format="dd/MM/yyyy";
  //$scope.altInputFormats = ['M!/d!/yyyy'];

  $scope.popup1 = {
    opened: false
  };

  $scope.popup2 = {
    opened: false
  };

  var tomorrow = new Date();
  tomorrow.setDate(tomorrow.getDate() + 1);
  var afterTomorrow = new Date();
  afterTomorrow.setDate(tomorrow.getDate() + 1);
  $scope.events = [
    {
      date: tomorrow,
      status: 'full'
    },
    {
      date: afterTomorrow,
      status: 'partially'
    }
  ];

  function getDayClass(data) {
    var date = data.date,
      mode = data.mode;
    if (mode === 'day') {
      var dayToCheck = new Date(date).setHours(0,0,0,0);

      for (var i = 0; i < $scope.events.length; i++) {
        var currentDay = new Date($scope.events[i].date).setHours(0,0,0,0);

        if (dayToCheck === currentDay) {
          return $scope.events[i].status;
        }
      }
    }

    return '';
  }





})


reserva.controller("BarCtrl", function ($scope,$http) {
  //
  $scope.labels = new Array();
  $scope.data   = new Array();
  $scope.puntos = new Array();
$http({
	   method: 'GET',
	   url:'/reservas/jsonempleadoreservas',
	   }).success(function(data){

		(function i(x){
		    if(x >= data.length){
		      $scope.data.push($scope.puntos);
		   return true;
		   }
	          
		 x++;
                  i(x);
		})(0)
		 for(x=0;x<data.length;x++){
		     $scope.labels.push(data[x].nombre);
		     $scope.puntos.push(parseInt(data[x].cantidad));
		}    	    
	});

 
  //$scope.data = [
  //  [65, 59, 80, 81, 56, 55, 40],
  //  [28, 48, 40, 19, 86, 27, 90]
 // ];
});

reserva.controller("DoughnutCtrl", function ($scope) {
  $scope.labels = ["Download Sales", "In-Store Sales", "Mail-Order Sales"];
  $scope.data = [300, 500, 100];
});


reserva.controller("LineCtrl", function ($scope) {

  $scope.labels = ["January", "February", "March", "April", "May", "June", "July"];
  $scope.series = ['Series A', 'Series B'];
  $scope.data = [
    [65, 59, 80, 81, 56, 55, 40],
    [28, 48, 40, 19, 86, 27, 90]
  ];
  $scope.onClick = function (points, evt) {
    console.log(points, evt);
  };
  $scope.options = {
    backgroundColor: "#F5DEB3",
  }

});

reserva.controller('reserva',function($scope){
  $scope.dt = new Date();
  $scope.today = function() {
    $scope.dt = new Date();
  };
  $scope.today();

  $scope.clear = function() {
    $scope.dt = null;
  };

  $scope.inlineOptions = {
    customClass: getDayClass,
    minDate: new Date(),
    showWeeks: true
  };

  $scope.dateOptions = {
    dateDisabled: disabled,
    formatYear: 'yy',
    maxDate: new Date(2020, 5, 22),
    minDate: new Date(),
    startingDay: 1
  };

  // Disable weekend selection
  function disabled(data) {
    var date = data.date,
      mode = data.mode;
    return mode === 'day' && (date.getDay() === 0 || date.getDay() === 6);
  }

  $scope.toggleMin = function() {
    $scope.inlineOptions.minDate = $scope.inlineOptions.minDate ? null : new Date();
    $scope.dateOptions.minDate = $scope.inlineOptions.minDate;
  };

  $scope.toggleMin();

  $scope.open1 = function() {
    $scope.popup1.opened = true;
  };

  $scope.open2 = function() {
    $scope.popup2.opened = true;
  };

  $scope.setDate = function(year, month, day) {
    $scope.dt = new Date(year, month, day);
  };

  $scope.formats = ['dd-MMMM-yyyy', 'yyyy/MM/dd', 'dd.MM.yyyy', 'shortDate'];
  //$scope.format = $scope.formats[0];
  $scope.format="yyyy-MM-dd";
  $scope.altInputFormats = ['yyyy-MM-dd'];

  $scope.popup1 = {
    opened: false
  };

  $scope.popup2 = {
    opened: false
  };

  var tomorrow = new Date();
  tomorrow.setDate(tomorrow.getDate() + 1);
  var afterTomorrow = new Date();
  afterTomorrow.setDate(tomorrow.getDate() + 1);
  $scope.events = [
    {
      date: tomorrow,
      status: 'full'
    },
    {
      date: afterTomorrow,
      status: 'partially'
    }
  ];

  function getDayClass(data) {
    var date = data.date,
      mode = data.mode;
    if (mode === 'day') {
      var dayToCheck = new Date(date).setHours(0,0,0,0);

      for (var i = 0; i < $scope.events.length; i++) {
        var currentDay = new Date($scope.events[i].date).setHours(0,0,0,0);

        if (dayToCheck === currentDay) {
          return $scope.events[i].status;
        }
      }
    }

    return '';
  }

});

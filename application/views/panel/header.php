<!DOCTYPE html>
<html ng-app="reservas">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Reservas</title>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!--script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.1.1/Chart.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
    <script src="/assets/js/ui-bootstrap-tpls-1.3.3.min.js"></script>
    
    <script src="/assets/js/angular-chart.min.js"></script>
    <script src="/assets/js/reservas.js"></script>
    

    <!-- Include all compiled plugins (below), or include individual files as needed -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/assets/css/fa.css">
<link rel="stylesheet" type="text/css" href="/assets/css/angular-chart.min.css">

<!-- Latest compiled and minified JavaScript -->


    <!-- Bootstrap -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style type="text/css">
.form-top {
    overflow: hidden;
    padding: 0 25px 15px 25px;
    background: #444;
    background: rgba(0, 0, 0, 0.35);
    -moz-border-radius: 4px 4px 0 0; -webkit-border-radius: 4px 4px 0 0; border-radius: 4px 4px 0 0;
    text-align: left;
}

.form-top-left {
    float: left;
    width: 75%;
    padding-top: 25px;
}

.form-top-left h3 { margin-top: 0; color: #fff; }
.form-top-left p { opacity: 0.8; color: #fff; }

.form-top-right {
    float: left;
    width: 25%;
    padding-top: 5px;
    font-size: 66px;
    color: #fff;
    line-height: 100px;
    text-align: right;
    opacity: 0.3;
}

.form-bottom {
    padding: 25px 25px 30px 25px;
    background: #444;
    background: rgba(0, 0, 0, 0.3);
    -moz-border-radius: 0 0 4px 4px; -webkit-border-radius: 0 0 4px 4px; border-radius: 0 0 4px 4px;
    text-align: left;
}

.form-bottom form textarea {
    height: 100px;
}
/*******/
.tick-value{
opacity: 0.8;
    color: #fff;
}
.form-bottom form .input-error {
    border-color: #19b9e7;
}
.dondatos-label {
    opacity: 0.8;
    color: #fff;
}
/****/

textarea, 
textarea.form-control {
}

input[type="text"]:focus, 
textarea:focus, 
textarea.form-control:focus {
    background: #fff;
    border: 3px solid #fff;
    -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none;
}

input[type="text"]:-moz-placeholder, textarea:-moz-placeholder, textarea.form-control:-moz-placeholder { color: #888; }
input[type="text"]:-ms-input-placeholder, textarea:-ms-input-placeholder, textarea.form-control:-ms-input-placeholder { color: #888; }
input[type="text"]::-webkit-input-placeholder, textarea::-webkit-input-placeholder, textarea.form-control::-webkit-input-placeholder { color: #888; }



button.btn {
    vertical-align: middle;
    /*background: #19b9e7; */
    border: 0;
    font-family: 'Roboto', sans-serif;
    /*color: #fff;*/
    -moz-border-radius: 4px; -webkit-border-radius: 4px; border-radius: 4px;
    text-shadow: none;
    -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none;
    -o-transition: all .3s; -moz-transition: all .3s; -webkit-transition: all .3s; -ms-transition: all .3s; transition: all .3s;
}

button.btn:hover { opacity: 0.6; color: #fff; }

button.btn:active { outline: 0; opacity: 0.6; color: #fff; -moz-box-shadow: none; -webkit-box-shadow: none; box-shadow: none; }

button.btn:focus { outline: 0; opacity: 0.6; background: #19b9e7; color: #fff; }

button.btn:active:focus, button.btn.active:focus { outline: 0; opacity: 0.6; background: #19b9e7; color: #fff; }
body {
background-image: url('/assets/img/1.jpg');
background-repeat: no-repeat;
background-attachment: fixed;
}




    
.rounded {
    background-color: #666;
    color: #fff;
    font-weight: bold;
    padding: 10px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    margin-right: 10px;
    margin-top: 10px;
    text-align: center;
    opacity: 0.8;  
    cursor: pointer; 
    cursor: hand;
    -webkit-transition: all 0.1s ease-in 0s;
    border-bottom: 8px solid #2980b9; 
}
.rounded:hover{
     border-bottom: 4px solid #2980b9;
     margin-top: 4px;
}
 .uno {
    background-color: #E8980C;
}
 .dos {
    background-color: #FF0000;
}
 .tres {
    background-color: #4F0CE8;
}
.cuatro {
    background-color: #0DE7FF;
}
.back {
    background-color: #56CDFF;
}
.logout {
  background-color: #45FF93;
}
.table {
  margin: 0 0 40px 0;
  width: 100%;
  box-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
  display: table;
}
.row.header {
  /*font-weight: 900;*/
  color: #ffffff;
  background: #ea6153;
}
.row.green {
  background: #27ae60;
}
.oscurecer {
     opacity: 0.3;
}
.loading {
    position: absolute;text-align: center;margin-top: 20%;margin-left: 37%;
    width: 16%;
}
.loading2 {
  position: absolute;text-align: center;margin-top: 0%;margin-left: 37%;
  width: 12%;
}
::-webkit-scrollbar {
    width: 9px;
    height: 9px;
}
::-webkit-scrollbar-button {
    
}
::-webkit-scrollbar-track-piece {
    background: #ccc
}
::-webkit-scrollbar-thumb {
    background: #888
}â€‹

 .tooltip.customClass .tooltip-inner {
          color: #880000;
          background-color: #ffff66;
          box-shadow: 0 6px 12px rgba(0,0,0,.175);
        }
        /* Hide arrow */
        .tooltip.customClass .tooltip-arrow {
          display: none;
        }
        .poper-body {
                font-size: 9px;
                    width: 100%;

        }
        .do_popover {
          max-height:  57px;
          overflow-y: scroll;
          background-color: wheat;
          opacity: 0.9;
        }
        
        
    }

body{
            background-image: url('/assets/img/1.jpg') !important;
    }
</style>

  </head>


<?php 
class Reservas extends CI_Controller  {
/*
 *  index de reserva
 */
	 function index(){
	   $this->load->view('reservas/index');
	 }
    function  nuevocliente(){
	
	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevocliente');
	}
	function  nuevareserva(){
	  $this->load->database();
	  $this->load->model('Cliente_model');
	  $this->load->model('Solicitud_model');

	  $empleados = $this->Cliente_model->listarEmpleado();
	  $solicitud = $this->Solicitud_model->listarSolicitud();
     	  $bloque    = $this->Cliente_model->listarBloqueHorario(); 
	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevareserva',array('solicitud'=>$solicitud,'empleados'=>$empleados,'bloque'=>$bloque));
	} 
	function login(){
	  $this->load->view('reservas/header');
	  $this->load->view('login/login');	
	}

	function panel(){
	  $this->load->view('panel/header');
	  $this->load->view('panel/panel');		
	}
	function solicitud(){
      $this->load->view('panel/header'); 
	  $this->load->view('solicitud/solicitud');			
	}
	function graficos(){
	   $this->load->view('panel/header'); 
	  $this->load->view('graficos/graficos');				
	}
       function listareservas(){
	  $this->load->view('panel/header');
	  $this->load->view('reservas/listareservas');
	}
      function jsonreservas(){
	 $this->load->database();
	 $this->load->model('Cliente_model');
	 $reservas = $this->Cliente_model->jsonreservas();
	 echo json_encode($reservas);
	}

}
?>

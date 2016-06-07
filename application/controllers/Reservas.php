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
	  $this->load->model('Solicitud_model');

	  $solicitud = $this->Solicitud_model->listarSolicitud();
      
	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevareserva',array('solicitud'=>$solicitud));
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

}
?>

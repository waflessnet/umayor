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

	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevareserva');
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
}
?>

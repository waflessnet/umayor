<?php 
class Reservas extends CI_Controller  {
/*
 *  index de reserva
 */
	 function index(){
	   $this->load->view('reservas/index');
	 }
    	function  nuevocliente(){

	  $this->load->view('reservas/header');
	  $this->load->view('reservas/nuevocliente');
	} 
}
?>

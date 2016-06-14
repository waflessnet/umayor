<?php 
/** clases para procesar los formularios **/
class Formulario extends CI_Controller  {

   function nuevocliente(){
	if($this->input->method(TRUE) == "POST"){
	 $cliente = array();
	 $cliente['nombre']    = $this->input->post('nombre');
	 $cliente['paterno']   = $this->input->post('paterno');
	 $cliente['materno']   = $this->input->post('materno');
	 $cliente['telefono']  = $this->input->post('telefono');
	 $cliente['email']     = $this->input->post('email');
	 $cliente['direccion'] = $this->input->post('direccion');
	 $cliente['sexo']      = $this->input->post('sexo');
	 $cliente['rut']       = $this->input->post('rut');
	 $cliente['dv']	       = $this->input->post('dv');
	 $cliente['nacimiento']= $this->input->post("nacimiento");
	  $this->load->database();
	  $this->load->model('Cliente_model');
	  $solicitud = $this->Cliente_model->crearCliente($cliente);
	  //var_dump($solicitud[0]->salida);
	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevocliente',array('resultado'=>$solicitud[0]->salida));
 

	}
  }
    function nuevoempleado(){
	if($this->input->method(TRUE) == "POST"){
	 $cliente = array();
	 $cliente['nombre']    = $this->input->post('nombre');
	 $cliente['paterno']   = $this->input->post('paterno');
	 $cliente['materno']   = $this->input->post('materno');
	 $cliente['telefono']  = $this->input->post('telefono');
	 $cliente['email']     = $this->input->post('email');
	 $cliente['direccion'] = $this->input->post('direccion');
	 $cliente['sexo']      = $this->input->post('sexo');
	 $cliente['rut']       = $this->input->post('rut');
	 $cliente['dv']	       = $this->input->post('dv');
	 $cliente['nacimiento']= $this->input->post("nacimiento");
	  $this->load->database();
	  $this->load->model('Cliente_model');
	  $solicitud = $this->Cliente_model->crearEmpleado($cliente);
	  //var_dump($solicitud[0]->salida);
	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevocliente',array('resultado'=>$solicitud[0]->salida));
 

	}
  }
   function nuevareserva(){
	if($this->input->method(TRUE) == "POST"){
	 $cliente = array();
	 
	 $cliente['cliente']    = $this->input->post('cliente');
         //$cliente["cliente"]	= 1;
	 $cliente['empleado']   = $this->input->post('empleado');
	 $cliente['tipo']       = $this->input->post('tipo');
	 $cliente['bloque']     = $this->input->post('bloque');
	 $cliente['fecha']      = $this->input->post('fecha');
	  $this->load->database();
	  $this->load->model('Cliente_model');
	  $solicitud = $this->Cliente_model->crearReservaCliente($cliente);
	  //var_dump($solicitud[0]->salida);
	  $this->load->view('panel/header');
	  $this->load->view('reservas/nuevocliente',array('resultado'=>$solicitud[0]->salida));
 

	}


	}
   function listarempleado(){
	  $this->load->database();
	  $this->load->model('Cliente_model');
	  $solicitud = $this->Cliente_model->listarEmpleado();
	  echo json_encode($solicitud);
	
	}
 
}


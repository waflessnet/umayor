<?php 
class Cliente_model extends CI_Model {
 
 function __construct()
    {
        parent::__construct();
    }
public function crearCliente($cliente){

	    $sp = "{$cliente['rut']}, ";
 	    $sp.= "'{$cliente['dv']}', ";
 	    $sp.= "'{$cliente['nombre']}', ";
 	    $sp.= "'{$cliente['paterno']}', ";
 	    $sp.= "'{$cliente['materno']}', ";
 	    $sp.= "'{$cliente['direccion']}', ";
 	    $sp.= "'{$cliente['nacimiento']}', ";
 	    $sp.= "'{$cliente['sexo']}', ";
 	    $sp.= "{$cliente['telefono']}, ";
 	    $sp.= "'{$cliente['email']}' ";

            $query = $this->db->query("call crearCliente($sp)");
            return $query->result();

}
public function crearEmpleado($cliente){

	    $sp = "{$cliente['rut']}, ";
 	    $sp.= "'{$cliente['dv']}', ";
 	    $sp.= "'{$cliente['nombre']}', ";
 	    $sp.= "'{$cliente['paterno']}', ";
 	    $sp.= "'{$cliente['materno']}', ";
 	    $sp.= "'{$cliente['direccion']}', ";
 	    $sp.= "'{$cliente['nacimiento']}', ";
 	    $sp.= "'{$cliente['sexo']}', ";
 	    $sp.= "{$cliente['telefono']}, ";
 	    $sp.= "'{$cliente['email']}' ";

            $query = $this->db->query("call crearEmpleado($sp)");
            return $query->result();

}
public function listarEmpleado(){
	$query = $this->db->query("call listarEmpledos()");
	mysqli_next_result($this->db->conn_id);
	return $query->result();
}
public function listarBloqueHorario(){
	$query = $this->db->query("call listarBloqueHorario()");
	mysqli_next_result($this->db->conn_id);
	return $query->result();
}
public function crearReservaCliente($reserva){
	$sp ="{$reserva['cliente']},";
	$sp.="{$reserva['empleado']},";
	$sp.="{$reserva['bloque']},";
	$sp.="{$reserva['tipo']},";
	$sp.="'{$reserva['fecha']}'";

	$query = $this->db->query("call crearReservaCliente($sp)");
	mysqli_next_result($this->db->conn_id);
	return $query->result();

	
}
public function jsonreservas(){
	$query = $this->db->query("call listarReservas()");
	mysqli_next_result($this->db->conn_id);
	return $query->result();

}

}

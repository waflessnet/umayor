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
}

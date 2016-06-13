<?php 
class Solicitud_model extends CI_Model {
 
 function __construct()
    {
        parent::__construct();
    }
public function listarSolicitud($id=0){

            $query     = $this->db->query("call listarSolicitud($id)");
            $resultado = $query->result();
	    mysqli_next_result($this->db->conn_id);
	    return $resultado;

}
}

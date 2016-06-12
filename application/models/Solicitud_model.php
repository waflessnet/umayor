<?php 
class Solicitud_model extends CI_Model {
 
 function __construct()
    {
        parent::__construct();
    }
public function listarSolicitud($id=0){

            $query = $this->db->query("call listarSolicitud($id)");
            return $query->result();

}
}

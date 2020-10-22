<?php
include_once "app/helpers/db.helper.php";
class PersonajesModel{

    private $db;
    private $dbHelper;

    function __construct(){
        $this->dbHelper = new DBHelper();
        $this->db = $this->dbHelper->connect();
    }

    function obtenerPersonajes(){
        $sentencia = $this->db->prepare( "SELECT * FROM personajes");
        $sentencia ->execute ();
        $personajes = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $personajes;
    }
}

?>
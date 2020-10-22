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
        $sentencia = $this->db->prepare("SELECT personajes.id, personajes.personaje, clanes.clan
        FROM personajes JOIN clanes ON (personajes.id_clan=clanes.id)");
        $sentencia ->execute ();
        $personajes = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $personajes;
    }

    function obtenerDetallePersonaje($id){
        $sentencia = $this->db->prepare("SELECT * FROM personajes WHERE id=?");
        $sentencia ->execute ([$id]);
        $personaje = $sentencia->fetch(PDO::FETCH_OBJ);
        return $personaje;
    }

    function personajePorClan($clan){
        $sentencia = $this->db->prepare("SELECT id, personaje FROM personajes WHERE id_clan=?");
        $sentencia ->execute ([$clan]);
        $personajes = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $personajes;
    }

}

?>
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
        $sentencia ->execute([$clan]);
        $personajes = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $personajes;
    }

    function eliminarPersonaje($id){
        $sentencia = $this->db->prepare("DELETE FROM personajes WHERE id = ?");
        $sentencia->execute([$id]);
    }

    function agregarPersonaje($personaje, $descripcion, $clan){
        $sentencia = $this->db->prepare("INSERT INTO personajes (personaje, descripcion, id_clan) VALUES (?,?,?)");
        $sentencia->execute([$personaje, $descripcion, $clan]);
    }

    function editarPersonaje($personaje, $descripcion, $clan, $id){
        $sentencia = $this->db->prepare('UPDATE personajes SET personaje=?, descripcion=?, id_clan=? WHERE personajes.id=?');
        $sentencia->execute([$personaje, $descripcion, $clan, $id]);
    }
}
?>
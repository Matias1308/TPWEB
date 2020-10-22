<?php

include_once "app/helpers/db.helper.php";

class  ClanesModel{

    private $db;
    private $dbHelper;

    function __construct(){
        $this->dbHelper = new DBHelper();
        $this->db = $this->dbHelper->connect();
    }

    function obtenerClanes(){
        $sentencia = $this->db->prepare("SELECT id, clan FROM clanes");
        $sentencia ->execute ();
        $clanes = $sentencia->fetchAll(PDO::FETCH_OBJ);
        return $clanes;
    }
    
    function obtenerClan($id){
        $sentencia = $this->db->prepare("SELECT * FROM clanes WHERE id=?");
        $sentencia ->execute ([$id]);
        $clan = $sentencia->fetch(PDO::FETCH_OBJ);
        return $clan;
    }

    function eliminarClan($id){
        $sentencia = $this->db->prepare("DELETE FROM clanes WHERE id = ?");
        $sentencia->execute([$id]);
    }

    function agregarClan($clan, $descripcion){
        $sentencia = $this->db->prepare("INSERT INTO clanes (clan, descripcion) VALUES (?,?)");
        $sentencia->execute([$clan, $descripcion]);
    }

    function editarClan($clan, $descripcion, $id){
        $sentencia = $this->db->prepare('UPDATE clanes SET clan=?, descripcion=? WHERE clanes.id=?');
        $sentencia->execute([$clan, $descripcion, $id]);
    }
}
?>
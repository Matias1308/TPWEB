<?php

include_once 'app/helpers/db.helper.php';

class UsuarioModel {
    
    private $db;
    private $dbHelper;    

    function __construct() {
        $this->dbHelper = new DBHelper();

        $this->db = $this->dbHelper->connect();
    }

    function usuarioPorEmail($email) {
        $sentencia = $this->db->prepare('SELECT * FROM usuarios WHERE email = ?');
        $sentencia->execute([$email]);
        return $sentencia->fetch(PDO::FETCH_OBJ);
    }
}
?>
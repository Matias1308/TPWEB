<?php

class DBHelper{
    function connect(){
        $db = new PDO('mysql:host=localhost;'.'dbname=db_personajes;charset=utf8', 'root', '');
        return $db;
    }
}
?>
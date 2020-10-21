<?php
$db = new PDO('mysql:host=localhost;'.'dbname=db_personajes;charset=utf8', 'root', '');

$sentencia = $db->prepare( "SELECT * FROM personajes");
$sentencia ->execute ();
$personajes = $sentencia->fetchAll(PDO::FETCH_OBJ);

$sentencia = $db->prepare( "SELECT * FROM clanes");
$sentencia ->execute ();
$clanes = $sentencia->fetchAll(PDO::FETCH_OBJ);

echo "<h1> Personajes </h1>";

foreach ($personajes as $personaje){
    echo "<h2>".$personaje->Personaje."</h2>";
    echo "<h3> Clan: ".$personaje->Clan."</h3>";
    echo "<p>".$personaje->Descripción."</p>"; 
}

echo "<h1> Clanes </h1>";

foreach ($clanes as $clan){
    echo "<h2>".$clan->Clan."</h2>";
    echo "<p>".$clan->Descripción."</p>";
}
?>
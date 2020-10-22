<?php
class ClanesView{

    function __construct(){ 
    }

    function mostrarClanes($clanes){
        echo "<h1> Clanes </h1>";

        foreach ($clanes as $clan){
            echo "<h2>$clan->clan</h2>";
            echo "<a href='filtrar/$clan->id'>Informacion y miembros</a>";
        }
    }

    function mostrarClan($clan, $miembros){
        echo "<h1>$clan->clan</h1>";
        echo "<p>$clan->descripcion</p>";
        echo "<h2>Miembros:</h2>";
        foreach ($miembros as $miembro){
            echo "<h3>$miembro->personaje</h3>";
            echo "<a href='detallar/$miembro->id'>Mas informacion</a>";
        }
    }
}    
?>
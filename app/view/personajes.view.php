<?php
class PersonajesView{

    function __construct(){ 
    }

    function mostrarPersonajes($personajes){
        echo "<h1> Personajes </h1>";

        foreach ($personajes as $personaje){
            echo "<h2>".$personaje->Personaje."</h2>";
            echo "<h3> Clan: ".$personaje->Clan."</h3>";
            echo "<p>".$personaje->Descripción."</p>"; 
        }
    }
}
?>

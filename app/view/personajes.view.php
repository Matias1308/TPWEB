<?php
class PersonajesView{

    function __construct(){ 
    }

    function mostrarPersonajes($personajes){
        echo "<h1> Personajes </h1>";

        foreach ($personajes as $personaje){
            echo "<h2>".$personaje->personaje."</h2>";
            echo "<p>".$personaje->descripcion."</p>"; 
        }
    }
}
?>

<?php
class ClanesView{

    function __construct(){ 
    }

    function mostrarClanes($clanes){
        echo "<h1> Clanes </h1>";

        foreach ($clanes as $clan){
            echo "<h2>".$clan->clan."</h2>";
            echo "<a href='detallar/$clan->id'>Mas informacion</a>";
        }
    }
}    
?>
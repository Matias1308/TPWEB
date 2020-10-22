<?php
require_once('libs/smarty/libs/Smarty.class.php');
class ClanesView{

    function __construct(){ 
    }

    function mostrarClanes($clanes){
        $smarty = new Smarty();
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarClanes.tpl');
        /*echo "<h1> Clanes </h1>";

        foreach ($clanes as $clan){
            echo "<h2>$clan->clan</h2>";
            echo "<a href='filtrar/$clan->id'>Informacion y miembros</a>";
        }*/
    }

    function mostrarClan($clan, $miembros){
        $smarty = new Smarty();
        $smarty->assign('clan', $clan);
        $smarty->assign('miembros', $miembros);
        $smarty->display('templates/mostrarClan.tpl');
        /*echo "<h1>$clan->clan</h1>";
        echo "<p>$clan->descripcion</p>";
        echo "<h2>Miembros:</h2>";
        foreach ($miembros as $miembro){
            echo "<h3>$miembro->personaje</h3>";
            echo "<a href='detallar/$miembro->id'>Mas informacion</a>";
        }*/
    }
    function mostrarError($error){
        $smarty = new Smarty();
        $smarty->assign('error', $error);
        $smarty->display('templates/mostrarError.tpl');
    }
    function mostrarFormEditar($id){
        $smarty = new Smarty();
        $smarty->assign('id', $id);
        $smarty->display('templates/mostrarFormClan.tpl');
    }
}    
?>
<?php

require_once('libs/smarty/libs/Smarty.class.php');

class PersonajesView{

    function mostrarError($error){
        $smarty = new Smarty();
        $smarty->assign('error', $error);
        $smarty->display('templates/mostrarError.tpl');
    }

    function mostrarPersonajes($personajes, $clanes){
        $smarty = new Smarty();
        $smarty->assign('personajes', $personajes);
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarPersonajes.tpl');
    }

    function mostrarHome(){
        $smarty = new Smarty();
        $smarty->display('templates/mostrarHome.tpl');
    }

    function mostrarDetalles($personaje){
        $smarty = new Smarty();
        $smarty->assign('personaje', $personaje);
        $smarty->display('templates/mostrarDetalles.tpl');
    }
    
    function mostrarFormEditar($id, $clanes){
        $smarty = new Smarty();
        $smarty->assign('id', $id);
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarFormEditar.tpl');
    }
}
?>

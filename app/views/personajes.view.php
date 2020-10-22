<?php

require_once('libs/smarty/libs/Smarty.class.php');

class PersonajesView{

    function __construct() {
        $this->smarty = new Smarty();
    }

    function mostrarError($error){
        $smarty->assign('error', $error);
        $smarty->display('templates/mostrarError.tpl');
    }

    function mostrarPersonajes($personajes, $clanes){
        $smarty->assign('personajes', $personajes);
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarPersonajes.tpl');
    }

    function mostrarHome(){
        $smarty->display('templates/mostrarHome.tpl');
    }

    function mostrarDetalles($personaje){
        $smarty->assign('personaje', $personaje);
        $smarty->display('templates/mostrarDetalles.tpl');
    }
    
    function mostrarFormEditar($id, $clanes){
        $smarty->assign('id', $id);
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarFormEditar.tpl');
    }
}
?>

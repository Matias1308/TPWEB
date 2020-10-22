<?php

require_once('libs/smarty/libs/Smarty.class.php');

class PersonajesView{

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function mostrarError($error){
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/mostrarError.tpl');
    }

    function mostrarPersonajes($personajes, $clanes){
        $this->smarty->assign('personajes', $personajes);
        $this->smarty->assign('clanes', $clanes);
        $this->smarty->display('templates/mostrarPersonajes.tpl');
    }

    function mostrarHome(){
        $this->smarty->display('templates/mostrarHome.tpl');
    }

    function mostrarDetalles($personaje){
        $this->smarty->assign('personaje', $personaje);
        $this->smarty->display('templates/mostrarDetalles.tpl');
    }
    
    function mostrarFormEditar($id, $clanes){
        $this->smarty->assign('id', $id);
        $this->smarty->assign('clanes', $clanes);
        $this->smarty->display('templates/mostrarFormEditar.tpl');
    }
}
?>

<?php

require_once('libs/smarty/libs/Smarty.class.php');

class ClanesView{

    private $smarty;

    function __construct() {
        $this->smarty = new Smarty();
    }

    function mostrarClanes($clanes){
        $this->smarty->assign('clanes', $clanes);
        $this->smarty->display('templates/mostrarClanes.tpl');
    }

    function mostrarClan($clan, $miembros){
        $this->smarty->assign('clan', $clan);
        $this->smarty->assign('miembros', $miembros);
        $this->smarty->display('templates/mostrarClan.tpl');
    }

    function mostrarError($error){
        $this->smarty->assign('error', $error);
        $this->smarty->display('templates/mostrarError.tpl');
    }
    
    function mostrarFormEditar($id){
        $this->smarty->assign('id', $id);
        $this->smarty->display('templates/mostrarFormClan.tpl');
    }
}    
?>
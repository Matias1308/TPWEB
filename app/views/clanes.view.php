<?php

require_once('libs/smarty/libs/Smarty.class.php');

class ClanesView{

    function __construct() {
        $this->smarty = new Smarty();
    }

    function mostrarClanes($clanes){
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarClanes.tpl');
    }

    function mostrarClan($clan, $miembros){
        $smarty->assign('clan', $clan);
        $smarty->assign('miembros', $miembros);
        $smarty->display('templates/mostrarClan.tpl');
    }

    function mostrarError($error){
        $smarty->assign('error', $error);
        $smarty->display('templates/mostrarError.tpl');
    }
    
    function mostrarFormEditar($id){
        $smarty->assign('id', $id);
        $smarty->display('templates/mostrarFormClan.tpl');
    }
}    
?>
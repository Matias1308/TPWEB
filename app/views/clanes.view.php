<?php

require_once('libs/smarty/libs/Smarty.class.php');

class ClanesView{

    function mostrarClanes($clanes){
        $smarty = new Smarty();
        $smarty->assign('clanes', $clanes);
        $smarty->display('templates/mostrarClanes.tpl');
    }

    function mostrarClan($clan, $miembros){
        $smarty = new Smarty();
        $smarty->assign('clan', $clan);
        $smarty->assign('miembros', $miembros);
        $smarty->display('templates/mostrarClan.tpl');
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
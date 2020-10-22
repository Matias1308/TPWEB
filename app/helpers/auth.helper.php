<?php

class AuthHelper {

    function __construct() {

        // abre la sessión siempre para usar el helper
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
    }

    /**
     * Barrera de seguridad para usuario logueado
     */
    function checkLogged() {
        if (!isset($_SESSION['ID_USUARIO'])) {
            header("Location: " . BASE_URL . "login");
            die(); 
        }
    }   
    
    function logout() {
        session_destroy();
        header("Location: " . BASE_URL . 'login');
    }    

    function login($usuario) {
        $_SESSION['ID_USUARIO'] = $usuario->id;
        $_SESSION['EMAIL_USUARIO'] = $usuario->email;
    }


}

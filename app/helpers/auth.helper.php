<?php

class AuthHelper {

    function __construct() {

        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
    }

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
?>
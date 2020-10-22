<?php

include_once "app/views/auth.view.php";
include_once "app/models/usuario.model.php";
include_once "app/helpers/auth.helper.php";

class authController{
    private $view;
    private $model;      
    private $authhelper;

    function __construct() {
        $this->model = new UsuarioModel();
        $this->view = new AuthView();
        $this->authHelper = new AuthHelper();
    }

    function mostrarLogin() {
        $this->view->mostrarFormLogin();
    }

    function verificarLogin() {
        $email = $_POST['email'];
        $contraseña = $_POST['contraseña'];

        // verifico campos obligatorios
        if (empty($email) || empty($contraseña)) {
            $this->view->mostrarFormLogin("Faltan datos obligatorios");
            die();
        }

        // obtengo el usuario
        $usuario = $this->model->usuarioPorEmail($email);

        // si el usuario existe, y las contraseñas coinciden
        if ($usuario && password_verify($contraseña, $usuario->contraseña)) {
            // armo la sesion del usuario
            $this->authHelper->login($usuario);

            // redirigimos al listado
            header("Location: " . BASE_URL . 'listar'); 
            
        } else {
            $this->view->mostrarFormLogin("Credenciales inválidas");
        }

    }

    function logout() {
        $this->authHelper->logout();
    }

}
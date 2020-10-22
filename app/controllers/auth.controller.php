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

        if (empty($email) || empty($contraseña)) {
            $this->view->mostrarFormLogin("Faltan datos obligatorios");
            die();
        }

        $usuario = $this->model->usuarioPorEmail($email);

        if ($usuario && password_verify($contraseña, $usuario->contraseña)) {
            $this->authHelper->login($usuario);
            header("Location: " . BASE_URL . 'listar'); 
        } else {
            $this->view->mostrarFormLogin("Credenciales inválidas");
        }
    }

    function logout() {
        $this->authHelper->logout();
    }

}
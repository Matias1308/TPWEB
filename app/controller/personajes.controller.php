<?php

include_once "app/model/personajes.model.php";
include_once "app/view/personajes.view.php";
include_once "app/model/clanes.model.php";
include_once "app/view/clanes.view.php";

class PersonajesController{

    private $model;
    private $view;
    private $clanesModel;
    private $clanesView;
    
    function __construct(){
        $this->model = new PersonajesModel();    
        $this->view = new PersonajesView();
        $this->clanesModel = new ClanesModel(); 
        $this->clanesView = new ClanesView();   
    }

    function mostrarPersonajes(){
        $personajes = $this->model->obtenerPersonajes();
        $clanes = $this->clanesModel->obtenerClanes();
        $this->view->mostrarPersonajes($personajes, $clanes);
    }

    function mostrarHome(){
        $this->view->mostrarHome();
    }

    function mostrarDetalles($id){
        $personaje = $this->model->obtenerDetallePersonaje($id);
        $this->view->mostrarDetalles($personaje);
    }

    function mostrarClanes(){
        $clanes = $this->clanesModel->obtenerClanes();
        $this->clanesView->mostrarClanes($clanes);
    }

    function filtrarClan($id){
        $clan = $this->clanesModel->obtenerClan($id);
        $personajes = $this->model->personajePorClan($id);
        $this->clanesView->mostrarClan($clan, $personajes);
    }

    function eliminarPersonaje($id){
        $this->model->eliminarPersonaje($id);
        header("Location: " . BASE_URL."listar");
    }

    function agregarPersonaje(){
        $personaje = $_POST['personaje'];
        $descripcion = $_POST['descripcion'];
        $clan = $_POST['clan'];

        if (empty($personaje) || empty($descripcion)) {
            $this->view->mostrarError('Faltan datos obligatorios');
            die();
        }
        
        $this->model->agregarPersonaje($personaje, $descripcion,  $clan);
        header("Location: " . BASE_URL."listar");
    }

    function mostrarFormEditar($id){
        $clanes = $this->clanesModel->obtenerClanes();
        $this->view->mostrarFormEditar($id, $clanes);
    }

    function editarPersonaje($id){
        $personaje = $_POST['personaje'];
        $descripcion = $_POST['descripcion'];
        $clan = $_POST['clan'];

        if (empty($personaje) || empty($descripcion)) {
            $this->view->mostrarError('Faltan datos obligatorios');
            die();
        }
        $this->model->editarPersonaje($personaje, $descripcion,  $clan, $id);
        header("Location: " . BASE_URL."listar");
    }
    function eliminarClan($id){
        $miembros = $this->model->personajePorClan($id);
        foreach ($miembros as $miembro) {
            $this->model->eliminarPersonaje($miembro->id);
        }
        $this->clanesModel->eliminarClan($id);
        header("Location: " . BASE_URL."clanes");
    }
    function agregarClan(){
        $clan = $_POST['clan'];
        $descripcion = $_POST['descripcion'];

        if (empty($clan) || empty($descripcion)) {
            $this->clanesView->mostrarError('Faltan datos obligatorios');
            die();
        }
        $this->clanesModel->agregarClan($clan, $descripcion);
        header("Location: " . BASE_URL."clanes");
    }
    function mostrarFormClan($id){
        $this->clanesView->mostrarFormEditar($id);
    }
    function editarClan($id){
        $clan = $_POST['clan'];
        $descripcion = $_POST['descripcion'];

        if (empty($clan) || empty($descripcion)) {
            $this->clanesView->mostrarError('Faltan datos obligatorios');
            die();
        }
        $this->clanesModel->editarClan($clan, $descripcion, $id);
        header("Location: " . BASE_URL."clanes");
    }

}

?>
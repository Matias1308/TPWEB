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
        $this->view->mostrarPersonajes($personajes);
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
}

?>
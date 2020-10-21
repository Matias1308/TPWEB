<?php

include_once "app/model/personajes.model.php";
include_once "app/view/personajes.view.php";

class PersonajesController{

    private $model;
    private $view;
    
    function __construct(){
        $this->model = new PersonajesModel();    
        $this->view = new PersonajesView();    
    }

    function showPersonajes(){
        $personajes = $this->model->obtenerPersonajes();
        $this->view->mostrarPersonajes($personajes);
    }
}

?>
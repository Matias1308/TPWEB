<?php
include_once 'app/controller/personajes.controller.php';
//include_once 'app/controller/auth.controller.php';


// defino la base url para la construccion de links con urls semánticas
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'home'; // acción por defecto si no envían
}

// parsea la accion Ej: suma/1/2 --> ['suma', 1, 2]
$params = explode('/', $action);

// determina que camino seguir según la acción
switch ($params[0]) {    
    case 'listar':
        $controller = new personajesController();
        $controller->mostrarPersonajes();
        break;
    case 'home':
        $controller = new personajesController();
        $controller-> mostrarHome();
        break;
    case 'detallar':
        $id = $params[1];
        $controller = new personajesController();
        $controller->mostrarDetalles($id);
        break;
    case 'clanes':
        $controller = new personajesController();
        $controller-> mostrarClanes();
        break;   
    default:
        header("HTTP/1.0 404 Not Found");
        echo('404 Page not found');
        break;
}

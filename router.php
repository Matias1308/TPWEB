<?php
include_once 'app/controller/personajes.controller.php';
//include_once 'app/controller/auth.controller.php';


// defino la base url para la construccion de links con urls semánticas
define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

// lee la acción
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
} else {
    $action = 'listar'; // acción por defecto si no envían
}

// parsea la accion Ej: suma/1/2 --> ['suma', 1, 2]
$params = explode('/', $action);

// determina que camino seguir según la acción
switch ($params[0]) {
    case 'login':
        $controller = new AuthContoller();
        $controller->showLogin();
        break;
    case 'verify':
        $controller = new AuthContoller();
        $controller->loginUser();
        break;
    case 'logout':
        $controller = new AuthContoller();
        $controller->logout();
        break;    
    case 'listar':
        $controller = new personajesController();
        $controller->showPersonajes();
        break;
    case 'insertar':
        $controller = new personajesController();
        $controller->addTask();
        break;
    case 'eliminar': // eliminar/:ID
        $controller = new personajesController();
        $id = $params[1];
        $controller->deleteTask($id);
        break;
    case 'finalizar':
        $controller = new personajesController();
        $id = $params[1];
        $controller->finalizeTask($id);
        break;
    case 'ver':
        $controller = new personajesController();
        $id = $params[1];
        $controller->showDetail($id);
        break;
    default:
        header("HTTP/1.0 404 Not Found");
        echo('404 Page not found');
        break;
}

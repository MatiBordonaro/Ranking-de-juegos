<?php
require_once('app/controller/GamesController.php');
require_once('app/controller/CategoriesController.php');
require_once('app/controller/AuthController.php');
require_once('app/controller/ErrorController.php');
require_once('helpers/AuthHelpers.php');

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

if(empty($_GET['action'])){
    $_GET['action'] = 'home';
}
$action = $_GET['action'];
$params = explode('/', $action);

$Gamescontroller = new GamesController;
$CategoriesController = new CategoriesController;
$AuthController = new AuthController;
$ErrorController = new ErrorController;

switch($params[0]){
    case 'home':
        if(authHelpers::isLogged()){
        $Gamescontroller->showListOfCategories();
        $Gamescontroller->showGames();
        $CategoriesController->showCategories();
        } break;

    //juegos
    case 'addGame':
        if(authHelpers::isAdmin()){
                $Gamescontroller->showAddGameForm();
                $Gamescontroller->addGame();
        } break;
    case 'modifyGame':
        if(authHelpers::isAdmin()){
            if($params[1]) {
                $Gamescontroller->showModifyGameForm();
                $Gamescontroller->modifyGame();
            } else
                $ErrorController->showError('No hay juego para borrar');
        } break;
    case 'deleteGame':
        if(authHelpers::isAdmin()){
            if($params[1])
                $Gamescontroller->deleteGame($params[1]);
            else
                $ErrorController->showError('No hay juego para borrar');
        } break;

    case 'gamesByCategory':
        if(authHelpers::isLogged()){
            $Gamescontroller->showGamesByCategory($params[1]);
        } break;
    case 'gameDetails':
        if(authHelpers::isLogged()){
            $Gamescontroller->showGameDetails($params[1]);
        } break;

    //categorias
    case 'addCategory':
        if(authHelpers::isAdmin()){
            $CategoriesController->addCategory();
        } break;
    case 'modifyCategory':
        if(authHelpers::isAdmin()){
            if($params[1]){
                $CategoriesController->showModifyCategoryForm();
                $CategoriesController->modifyCategory($params[1]);
            } else {
                $ErrorController->showError('No hay categoria para modificar');
            } break;
        }
    case 'deleteCategory':
        if(authHelpers::isAdmin()){
            if($params[1])
                $CategoriesController->deleteCategory($params[1]);
            else 
                $ErrorController->showError('No hay catgoria para borrar');
        } break;

    //login
    case 'login':
        $AuthController->showLoginForm(); break;
    case 'logout':
        $AuthController->logout(); break;
    case 'verify':
        $AuthController->verify(); break;


    default:
        $AuthController->showLoginForm(); break;
}
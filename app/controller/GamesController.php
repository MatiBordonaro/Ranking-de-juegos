<?php
require_once('app/model/GamesModel.php');
require_once('app/view/GamesView.php');
require_once('ErrorController.php');
require_once('app/model/CategoriesModel.php');
require_once('helpers/AuthHelpers.php');

class GamesController {
    private $model;
    private $view;
    private $err;
    private $categories;

    function __construct(){
        $this->model = new GamesModel();
        $this->view = new GamesView();
        $this->err = new ErrorController();
        $this->categories = new CategoriesModel();
    }

    function showGames(){
        $games = $this->model->getAll();
        $this->view->renderGames($games, authHelpers::isAdmin());
    }

    function showGameDetails($id){
        $game = $this->model->get($id);
        $this->view->renderGameDetails($game);
    }

    function showListOfCategories(){
        $categories = $this->categories->getAll();
        $this->view->renderListOfCategories($categories);
    }

    function showGamesByCategory($category){
        $games = $this->model->getByCategory($category);
        if(!$games){
            $this->err->showError('No hay juegos con esta categoría');
            exit;
        }
        $this->view->renderGamesByCategory($games, $category);
    }

    function showAddGameForm(){
        $categories = $this->categories->getAll(); //obtener categorias de la db dinámicamente;
        $this->view->renderFormAdd($categories);
    }

    function addGame(){
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            if(isset($_POST['agregar-nombre']) && isset($_POST['elegir-categoria']) && isset($_POST['agregar-precio']) && isset($_POST['agregar-fecha'])){
            $nombre = $_POST['agregar-nombre'];
            $categoria = $_POST['elegir-categoria'];
            $precio = $_POST['agregar-precio'];
            $fecha = $_POST['agregar-fecha'];
            $this->model->add($nombre, $categoria, $precio, $fecha);
            header('Location: ' . BASE_URL . 'home');
            }
        }
    }
    
    function showModifyGameForm(){
        $categories = $this->categories->getAll();
        //esto renderiza el form para modificar
        if(isset($_POST['id-modificar'])){
            $id = $_POST['id-modificar'];
            $game = $this->model->get($id);
            $this->view->renderFormModify($id, $categories, $game->nombre, $game->categoria, $game->precio, $game->fecha);
        } else {
            $this->err->showError('Nada para modificar');
            exit;
        }
    }
    function modifyGame(){
        //aca va la lógica para mandar los datos del form de modificar al index
        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            if(isset($_POST['nombre-nuevo']) && isset($_POST['categoria-nueva']) && isset($_POST['precio-nuevo']) && isset($_POST['fecha-nueva'])){
                $id = $_POST['id-modificar'];
                $nombreNuevo = $_POST['nombre-nuevo'];
                $categoriaNueva = $_POST['categoria-nueva'];
                $precioNuevo = $_POST['precio-nuevo'];
                $fechaNueva = $_POST['fecha-nueva'];
                $this->model->modify($nombreNuevo, $categoriaNueva, $precioNuevo, $fechaNueva, $id);
                header('Location: ' . BASE_URL . 'home');
                exit;
            }
        }
    }       

    function deleteGame($id){
        $this->model->delete($id);
        header('Location: ' . BASE_URL . 'home');
    }
}

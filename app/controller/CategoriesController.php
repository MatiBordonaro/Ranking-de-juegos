<?php
require_once('app/model/CategoriesModel.php');
require_once('app/view/CategoriesView.php');
require_once('app/controller/ErrorController.php');


class CategoriesController {
    private $model;
    private $view;
    private $err;


    function __construct(){
        $this->model = new CategoriesModel;
        $this->view = new CategoriesView;
        $this->err = new ErrorController;

    }

    function showCategories(){
        $categories = $this->model->getAll();
        $this->view->renderCategories($categories, authHelpers::isAdmin());
    }

    function addCategory(){
        if($_SERVER['REQUEST_METHOD'] === 'POST') {
            if(isset($_POST['agregar-categoria']) && isset($_POST['agregar-descripcion'])){
            $categoria = $_POST['agregar-categoria'];
            $descripcion = $_POST['agregar-descripcion'];
            $this->model->add($categoria, $descripcion);
            header('Location: ' . BASE_URL . 'home');
            }
        }
    }

    function showModifyCategoryForm(){
        if(isset($_POST['btn-modificar-categoria'])){
            $nombre = $_POST['btn-modificar-categoria'];
            $categoria = $this->model->get($nombre);
            $this->view->renderFormModify($categoria->nombre, $categoria->descripcion);
            exit;
        }
    }

    function modifyCategory($categoriaVieja){
        if($_SERVER['REQUEST_METHOD'] === 'POST'){
            if(isset($_POST['categoria-modificada']) && isset($_POST['descripcion-modificada'])){
                $categoriaModificada = $_POST['categoria-modificada'];
                $descripcionModificada = $_POST['descripcion-modificada'];
                $this->model->modify($categoriaModificada, $descripcionModificada, $categoriaVieja);
                header('Location: ' . BASE_URL . 'home');        
            }
        }
    }

    function deleteCategory($categoria){
        if(isset($_POST['btn-eliminar-categoria'])){
            $this->model->delete($categoria);
            header('Location: ' . BASE_URL . 'home');
        }
    }
}
<?php
require_once('app/model/AuthModel.php');
require_once('app/view/AuthView.php');

class AuthController {
    private $model;
    private $view;

    function __construct(){
        $this->model = new AuthModel;
        $this->view = new AuthView;
    }

    function showLoginForm(){
        $this->view->renderLoginForm();
    }    

    function verify(){
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (!empty($_POST['username']) && !empty($_POST['password'])) {
                $username = $_POST['username'];
                $password = $_POST['password'];
                $usuario = $this->model->getUser($username);
                
                if ($usuario && (md5($password) === $usuario->password)) {
                    session_start();
                    $_SESSION['IS_LOGGED'] = true;
                    $_SESSION['USERNAME'] = $usuario->username;
                    $_SESSION['ROLE'] = $usuario->rol;
                    header("Location:" . BASE_URL . "home");
                    die();
                } else {
                    $this->view->renderLoginForm("Usuario incorrecto");
                }
            }
                else {
                $this->view->renderLoginForm("faltan datos obligatorios");
            }
        }
    }

    function logout(){
        session_start();
        session_destroy();
        header("Location:" . BASE_URL . "login");
        die();

    }

}
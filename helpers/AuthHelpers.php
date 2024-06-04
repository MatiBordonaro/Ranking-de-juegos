<?php

class authHelpers {

    static public function isLogged() {
        if (session_status() != PHP_SESSION_ACTIVE){
             session_start();
        }
        if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1800)) {
            session_destroy();
            header("Location:" . BASE_URL . "login");
            die();
        }
        // Actualizar tiempo de la última actividad
        $_SESSION['LAST_ACTIVITY'] = time();
        if (!isset($_SESSION['IS_LOGGED'])) {
            header('Location: '.BASE_URL."login");
            die();  
        } else{
            return true;
        } 
    }

    static public function isAdmin() {
        if (session_status() != PHP_SESSION_ACTIVE){
            session_start();
        }
        if (isset($_SESSION['LAST_ACTIVITY']) && (time() - $_SESSION['LAST_ACTIVITY'] > 1800)) {
            session_destroy();
            header("Location:" . BASE_URL . "login");
            die();
        }
        $_SESSION['LAST_ACTIVITY'] = time();
        if (isset($_SESSION['ROLE']) && $_SESSION['ROLE'] === 'admin') {
            return true;
        } else {
            return false;
        }
    }

}
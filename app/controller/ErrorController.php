<?php
require_once('app/view/ErrorView.php');

class ErrorController {

    private $err;

    function __construct()
    {
        $this->err = new ErrorView();
    }

    function showError($msj){
        $this->err->renderError($msj);
    }
}
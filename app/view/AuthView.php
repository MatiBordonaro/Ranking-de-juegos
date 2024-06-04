<?php
require_once('View.php');

class AuthView extends View{

    function renderLoginForm($msj = null){
        $this->smarty->assign('msj', $msj);
        $this->smarty->display('login.tpl');
    }
}
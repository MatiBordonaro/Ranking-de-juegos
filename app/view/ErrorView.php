<?php
require_once('View.php');

class ErrorView extends View{

    function renderError($err) {
        $this->smarty->assign('err', $err);
        $this->smarty->display('templates/error.tpl');
    }
}
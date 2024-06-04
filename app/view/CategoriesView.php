<?php
require_once('View.php');

class CategoriesView extends View {

    function renderCategories($categories, $isAdmin){
        $this->smarty->assign('categories', $categories);
        if($isAdmin)
            $this->smarty->display('tableCategoriesAdmin.tpl');
        else 
            $this->smarty->display('tableCategories.tpl');
    }

    function renderFormAdd(){
        $this->smarty->display('templates/formAddCategories.tpl');
    }

    function renderFormModify($nombreViejo, $descripcionVieja){
        $this->smarty->assign('nombreViejo', $nombreViejo);
        $this->smarty->assign('descripcionVieja', $descripcionVieja);
        $this->smarty->display('templates/formModifyCategories.tpl');
    }

}
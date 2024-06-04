<?php
require_once('View.php');


class GamesView extends View{

    function renderGames($games, $isAdmin){
        $this->smarty->assign('games', $games);
        if($isAdmin)
            $this->smarty->display('templates/homeAdmin.tpl');
        else 
            $this->smarty->display('templates/home.tpl');
    }

    function renderGameDetails($game){
        $this->smarty->assign('game', $game);
        $this->smarty->display('templates/gameDetails.tpl');
    }

    function renderListOfCategories($categories){
        $this->smarty->assign('categories', $categories);
    }

    function renderGamesByCategory($games, $category){
        $this->smarty->assign('games', $games);
        $this->smarty->assign('category', $category);
        $this->smarty->display('templates/gamesByCategory.tpl');
    }

    function renderFormModify($id, $categories, $nombreViejo, $categoriaVieja, $precioViejo, $fechaVieja){
        $this->smarty->assign('categories', $categories);
        $this->smarty->assign('id', $id);
        $this->smarty->assign('nombreViejo', $nombreViejo);
        $this->smarty->assign('categoriaVieja', $categoriaVieja);
        $this->smarty->assign('precioViejo', $precioViejo);
        $this->smarty->assign('fechaVieja', $fechaVieja);
        $this->smarty->display('templates/formModifyGames.tpl');
    }

    function renderFormAdd($categories){
        $this->smarty->assign('categories', $categories);
        $this->smarty->display('templates/formAddGame.tpl');
    }
}
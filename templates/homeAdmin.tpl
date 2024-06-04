{include 'htmlStart.tpl'}  
{include 'header.tpl'}  
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8">
        <h2 class="text-center ">Tabla de Juegos</h2>
        <table class="table table-light table-hover">
            <thead class="">
                <th>Nombre</th>
                <th>Categoría</th>
                <th>Precio</th>
                <th>Fecha</th>
            </thead>
            <tbody class="table-group-divider">
            {foreach $games as $game}
                <tr>
                    <td>{$game->nombre}</td>
                    <td>{$game->categoria}</td>
                    <td>{$game->precio}</td>
                    <td>{$game->fecha}</td>
                    <td class="p-3"><a class=" link-underline link-underline-opacity-0 border border-dark bg-dark text-light p-1 rounded-pill" href="gameDetails/{$game->id}" >Ver detalles</a></td>
                    <td>
                        <form method="post" action="modifyGame/{urlencode($game->nombre)}">
                            <input type="hidden" name="id-modificar" value="{$game->id}"> 
                            <button type="submit" class="btn btn-primary">✏️</button>
                        </form>
                    </td>
                    <td>
                        <form method="post" action="deleteGame/{$game->id}">
                            <input type="hidden" name="id-eliminar" value="{$game->id}"> 
                            <button type="submit" class=" btn btn-danger">🗑️</button>
                        </form>
                    </td>
                </tr>
            {/foreach}
            </tbody>
           
        </table> 
        {include 'listOfCategories.tpl'}
        
        </div>{include 'formAddGame.tpl'} 
       
        


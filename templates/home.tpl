{include 'htmlStart.tpl'}  
{include 'header.tpl'}  
<div class="container m-5">
    <div class="row">
        <div class="col-md-11 m-5">
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
                    <td class="p-2"><a class=" link-underline link-underline-opacity-0 border border-dark bg-dark text-light p-1 rounded-pill" href="gameDetails/{$game->id}" >Ver detalles</a></td>
                  
            {/foreach}
            </tbody>
        </table> 
        {include 'listOfCategories.tpl'}
        </div>
        
      


{include 'htmlStart.tpl'}
{include 'header.tpl'}
{if $game}  {*comprobamos que existe primero*}
<h1 class="h4  text-primary container mt-5">{$game->nombre}</h1>
<ul class="list-group w-50 container d-flex justify-content-center mt-5">
    <li class="list-group-item bg-secondary text-light border-dark">Categoría: {$game->categoria}</li>
    <li class="list-group-item bg-secondary text-light border-dark">Precio: {$game->precio}</li>
    <li class="list-group-item bg-secondary text-light border-dark">Fecha de estreno: {$game->fecha}</li>
</ul>
{/if}
<a href='home' class="link-underline link-underline-opacity-0"><span class="text-white h6  m-4 border border-dark bg-secondary rounded-4 p-3" >←Volver</span></a>
{include 'htmlEnd.tpl'}
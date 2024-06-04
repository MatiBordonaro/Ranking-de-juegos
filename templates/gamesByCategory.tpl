{include 'htmlStart.tpl'}
{include 'header.tpl'}
<div class="h4  text-primary container mt-5">
    <h1>Juegos de {$category}</h1>
    <ul class="list-group w-50 container d-flex justify-content-center mt-5 ">
    {foreach $games as $game}
        <li class="list-group-item bg-secondary text-light border-dark">{$game->nombre}</li>
    {/foreach} 
    </ul>
    <a href='home' class="link-underline link-underline-opacity-0"><span class="text-white h6  border border-dark bg-secondary rounded-4 p-3" >←Volver</span></a>  
</div>
{include 'htmlEnd.tpl'}

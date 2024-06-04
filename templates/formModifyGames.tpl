{include 'htmlStart.tpl'}
{include 'header.tpl'}
<h2 class="text-center text-primary mt-5 mb-5 ">Modifique el juego</h2>
<form action="" method="post" class="container d-flex justify-content-center  vstack gap-3 w-50">
    <input type="hidden" name="id-modificar" value="{$id}">
    
    <label class="form-label h5" for="nombre-nuevo">Nombre:</label>
    <input type="text" name="nombre-nuevo" value="{$nombreViejo}" class="form-control me-auto border-success">
    
    <label class="form-label h5" for="categoria-nueva">Categoria:</label>
    <select name="categoria-nueva" class="form-select me-auto border-success">
        {foreach $categories as $category}
            <option value="{$category->nombre}" {if $category->nombre == $categoriaVieja}selected{/if}>{$category->nombre}
            </option>
        {/foreach}
    </select>
    <label class="form-label h5" for="precio-nuevo">Precio:</label>
    <input type="number" name="precio-nuevo" value="{$precioViejo}" class="form-control me-auto border-success">
    
    <label  class="form-label h5" for="fecha-nueva">Fecha:</label>
    <input type="date" name="fecha-nueva" value="{$fechaVieja}" class="form-control me-auto border-success">
    
    <button type="submit" class="btn btn-success btn-md">✓</button>
</form>
{include 'htmlEnd.tpl'}
{include 'htmlStart.tpl'}
<h4 class="text-center text-primary mt-5 mb-5">Modifique la categoria</h4>
<form action="" method="post" class="container d-flex justify-content-center  vstack gap-3 w-50">
    
    <label for="categoria-modificada" class="form-label ">Nombre:</label>
    <input type="text" name="categoria-modificada" class="form-control me-auto border-success" value="{$nombreViejo}">
    
    <label for="descripcion-modificada" class="form-label">Descripcion:</label>
    <textarea class="form-control me-auto border-success" type="text" name="descripcion-modificada" value="{$descripcionVieja}">{$descripcionVieja}</textarea>
    
    <button type="submit" class="btn btn-success">✓</button>

</form>
{include 'htmlEnd.tpl'}
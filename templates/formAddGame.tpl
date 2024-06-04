<div class="d-flex col-md-1 Regla">
  <div class="vr"></div>
</div>  
<div  class="container col-md-3 mb-5">
<h4 class="text-center mb-5">←Agregar Juegos</h4>
    <form action="addGame/" method="post" class="vstack gap-3 w-70">
        <label for="agregar-nombre" class="form-label text-success h5">Nombre:</label>
        <input type="text" name="agregar-nombre" class="form-control ">

        <label for="elegir-categoria"  class="form-label text-success h5">Categoria:</label>
        <select name="elegir-categoria" class="form-select" aria-label="Default select example">
            {foreach $categories as $category}
                <option value="{$category->nombre}">{$category->nombre}</option>
            {/foreach}
        </select>

        <label for="agregar-precio"  class="form-label text-success h5">Precio:</label>
        <input type="number" name="agregar-precio" class="form-control">

        <label for="agregar-fecha"  class="form-label text-success h5">Fecha:</label>
        <input type="date" class="form-control" name="agregar-fecha">

        <button type="submit" class="btn btn-success">✓</button>
</form>
</div>
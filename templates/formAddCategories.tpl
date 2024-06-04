<div class="d-flex col-md-1" style="height: 800px;">
  <div class="vr"></div>
</div>  
<aside class="container col-md-3 mt-4">
    <h4 class="text-center mb-5">←Agregar categorias</h4>
    <form action="addCategory/" method="post" class="vstack gap-3 ">

        <label for="agregar-categoria" class="form-label text-success h5 ">Nombre:</label>
        <input class=" form-control me-auto border-success" type="text" name="agregar-categoria"
            placeholder="Agregue una categoria...">
    
        <label for="agregar-descripcion" class="form-label text-success h5">Descripcion:</label>
        <textarea class="form-control border-success" type="text" name="agregar-descripcion"> </textarea>
    
        <button type="submit" class="btn btn-success">✓</button>
    </form>
</aside>
</div>
</div>
{include 'htmlEnd.tpl'}
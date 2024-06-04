<div class="container mt-5">
    <div class="row">
        <div class="col-md-8">
        <h2 class="text-center">Tabla de Categorias</h2>
            <table class="table table-light table-hover mt-3">
                <thead>
                    <th>Nombre</th>
                    <th>Descripcion</th>
                </thead>
                <tbody class="table-group-divider">
                    {foreach $categories as $category}
                        <tr>
                            <td>{$category->nombre}</td>
                            <td>{$category->descripcion}</td>
                            <td>
                                <form method="post" action="modifyCategory/{urlencode($category->nombre)}">
                                    <input type="hidden" name="btn-modificar-categoria" value="{$category->nombre}">
                                    <button type="submit" class="btn btn-primary ">✏️</button>
                                </form>
                            </td>
                            <td>
                                <form method="post" action="deleteCategory/{urlencode($category->nombre)}">
                                    <input type="hidden" name="btn-eliminar-categoria" value="{$category->nombre}">
                                    <button type="submit" class="btn btn-danger">🗑️</button>
                                </form>
                            </td>
                        </tr>
                    {/foreach}
                </tbody>
            </table>
</div>
{include 'formAddCategories.tpl'}

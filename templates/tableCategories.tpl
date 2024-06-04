<div class="container m-5">
    <div class="row">
        <div class="col-md-10 m-5">
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
                        </tr>
                    {/foreach}
                </tbody>
            </table>
</div>
{include 'htmlEnd.tpl'}
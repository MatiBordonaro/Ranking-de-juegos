<div class="container d-flex justify-content-center btn-group dropdown" role="group">
        <button type="button" class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
        Lista de juegos por categoria
        </button>
        <ul class="dropdown-menu form-select dropdown-menu-dark ">
            {foreach $categories as $category}
                <a  class=" link-underline link-underline-opacity-0" href="gamesByCategory/{urlencode($category->nombre)}" ><li class="dropdown-item">{$category->nombre}</li></a>
            {/foreach}
        </ul>
</div>
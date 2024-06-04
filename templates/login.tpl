{include 'htmlStart.tpl'}
<div class="container">
  <div class="row">
    <form class="col-md-6 offset-md-3 mt-5" action="verify" method="POST">
      <legend class="text-center">Login</legend>
      <div class="mb-3">
        <label class="form-label">Nombre de usuario</label>
        <input type="text" name="username" class="form-control" placeholder="Ingrese nombre">
      </div>
      <div class="mb-3">
        <label class="form-label">Contraseña</label>
        <input type="password" name="password" class="form-control" placeholder="Ingrese contraseña">
      </div>
      {if $msj}
      <div class='alert alert-warning'>
        {$msj}
      </div>
      {/if}
      <button type="submit" class="btn btn-primary col-12">Submit</button>
    </form>
  </div>
</div>
{include 'htmlEnd.tpl'}
{include 'head.tpl'}
<form action="verificar" method="POST">
    <label>Email</label>
    <input name="email" type="text">
    <label>Contraseña</label>
    <input name="contraseña" type="password">
    <button type="submit">Log in</button>
    {if isset($error)}
    <p>{$error}</p>
    {/if}
</form>
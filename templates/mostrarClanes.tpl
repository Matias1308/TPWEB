{include 'templates/head.tpl'}
<body>
    <h1> Clanes </h1>
    <form action="agregar-clan" method="POST">
        <label>clan</label>
        <input name="clan" type="text">

        <label>Descripción</label>
        <textarea name="descripcion"></textarea>
        <button type="submit">Agregar</button>
    </form>

    {foreach from=$clanes item=clan}
        <h2>{$clan->clan}</h2>
            <a href='filtrar/{$clan->id}'>Informacion y miembros</a>
            <a href='eliminar-clan/{$clan->id}'>Eliminar</a>
            <a href='mostrar-editar-clan/{$clan->id}'>Editar</a>
    {/foreach} 
            
        
</body>
</html>
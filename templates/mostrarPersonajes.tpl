{include 'templates/head.tpl'}

    <h1> Personajes </h1>

    <form action="agregar-personaje" method="POST">
        <label>Personaje</label>
        <input name="personaje" type="text">

        <label>Descripción</label>
        <textarea name="descripcion"></textarea>

        <label>Clan</label>
        <select name="clan">
            {foreach from=$clanes item=clan}
                <option value={$clan->id}>{$clan->clan}</option>
            {/foreach}
        </select>

        <button type="submit">Agregar</button>
    </form>

    {foreach from=$personajes item=personaje}
            <h2>{$personaje->personaje}</h2>
            <h3>Clan: {$personaje->clan}</h3>
            <a href='detallar/{$personaje->id}'>Mas informacion</a>
            <a href='eliminar-personaje/{$personaje->id}'>Eliminar</a>
            <a href='mostrar-editar/{$personaje->id}'>Editar</a>
    {/foreach}

</body>
</html>
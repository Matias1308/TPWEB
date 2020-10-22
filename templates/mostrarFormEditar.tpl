{include 'templates/head.tpl'}



<form action="editar-personaje/{$id}" method="POST">
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

    <button type="submit">Editar</button>
</form>

</body>
</html>
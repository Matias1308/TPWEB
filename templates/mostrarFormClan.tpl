{include 'templates/head.tpl'}


    <form action="editar-clan/{$id}" method="POST">
        <label>Clan</label>
        <input name="clan" type="text">
        <label>Descripción</label>
        <textarea name="descripcion"></textarea>
        <button type="submit">Editar</button>
    </form>
</body>
</html>
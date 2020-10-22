{include 'templates/head.tpl'}

    <h1> Clanes </h1>

    {if isset($smarty.session.EMAIL_USUARIO)}
        <form action="agregar-clan" method="POST">
        
            <label>clan</label>
            <input name="clan" type="text">

            <label>Descripción</label>
            <textarea name="descripcion"></textarea>

            <button type="submit">Agregar</button>
        </form>
    {/if}

    {foreach from=$clanes item=clan}

        <h2>{$clan->clan}</h2>
            <a href='filtrar/{$clan->id}'>Informacion y miembros</a>

            {if isset($smarty.session.EMAIL_USUARIO)}

                <a href='eliminar-clan/{$clan->id}'>Eliminar</a>
                <a href='mostrar-editar-clan/{$clan->id}'>Editar</a>

            {/if}

    {/foreach} 
            
{include 'templates/footer.tpl'}  
</body>
</html>
{include 'templates/head.tpl'}
<body>
        <h1>{$clan->clan}</h1>
        <p>{$clan->descripcion}</p>
        <h2>Miembros:</h2>
        {foreach from=$miembros item=miembro}
            <h3>{$miembro->personaje}</h3>
            <a href='detallar/{$miembro->id}'>Mas informacion</a>
        {/foreach} 
</body>
</html>
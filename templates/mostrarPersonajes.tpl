{include 'templates/head.tpl'}
<body>
    <h1> Personajes </h1>

    {include 'templates/formulario.tpl'}

    {foreach from=$personajes item=personaje}
            <h2>{$personaje->personaje}</h2>
            <h3>Clan: {$personaje->clan}</h3>
            <a href='detallar/{$personaje->id}'>Mas informacion</a>
            <a href='eliminar-personaje/{$personaje->id}'>Eliminar</a>
            <a href='mostrar-editar/{$personaje->id}'>Editar</a>
    {/foreach}
</body>
</html>
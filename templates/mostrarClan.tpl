<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <base href="{BASE_URL}">
</head>
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
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <base href="{BASE_URL}">
</head>
<body>
    <h1> Personajes </h1>
    {foreach from=$personajes item=personaje}
            <h2>{$personaje->personaje}</h2>
            <h3>Clan: {$personaje->clan}</h3>
            <a href='detallar/{$personaje->id}'>Mas informacion</a>
    {/foreach}
</body>
</html>
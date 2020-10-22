<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <base href="{BASE_URL}">
</head>
<body>
    <h1> Clanes </h1>

        {foreach from=$clanes item=clan key=key name=name}
            <h2>{$clan->clan}</h2>
             <a href='filtrar/{$clan->id}'>Informacion y miembros</a>
        {/foreach} 
            
        
</body>
</html>
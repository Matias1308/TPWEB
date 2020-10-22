<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <base href="{BASE_URL}">
</head>
<body>
 <nav>
    <ul>
        <li>
            <a href="home">Home</a> 
        </li>
        <li>
            <a href="clanes">Clanes</a>
        </li>
        <li>
            <a href="listar">Personajes</a>
        </li>
        <li>
            {if isset($smarty.session.EMAIL_USER)}
                Ahora sos Hokage
            {else}
                Tu rango solo llega a Genin
            {/if}
        </li>
    </ul>
</nav>
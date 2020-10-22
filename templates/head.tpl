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
        {if isset($smarty.session.EMAIL_USUARIO)}
            <li>Ahora sos Hokage</li>
            <li><a href="logout">Logout</a></li>
        {else}
            <li>Tu Rango solo llega a Genin</li>
            <li><a href="login">Login</a></li>
        {/if}
    </ul>
</nav>
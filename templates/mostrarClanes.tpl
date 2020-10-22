{include 'templates/head.tpl'}
<body>
    <h1> Clanes </h1>

        {foreach from=$clanes item=clan key=key name=name}
            <h2>{$clan->clan}</h2>
             <a href='filtrar/{$clan->id}'>Informacion y miembros</a>
        {/foreach} 
            
        
</body>
</html>
<?php
class PersonajesView{

    function __construct(){ 
    }

    function mostrarPersonajes($personajes){
        echo "<h1> Personajes </h1>";

        foreach ($personajes as $personaje){
            echo "<h2>".$personaje->personaje."</h2>";
            echo "<a href='detallar/$personaje->id'>Mas informacion</a>";
        }
    }
    function mostrarHome(){
        echo "<h1> Historia </h1>";

        echo "<p>Naruto, romanizada como NARUTO, es una serie de manga escrita e ilustrada por Masashi Kishimoto. La obra narra la historia de un ninja adolescente llamado Naruto Uzumaki, quien aspira a convertirse en Hokage, líder de su aldea, con el propósito de ser reconocido como alguien importante dentro de la aldea y entre sus compañeros.
        El éxito del manga hizo que su trama fuera adaptada a un anime producido por Pierrot y distribuido por Aniplex, el cual fue transmitido por la cadena televisiva TV Tokyo el 3 de octubre de 2002. La primera temporada duró 220 episodios, y poco después se creó una secuela, Naruto: Shippūden, cuya emisión empezó el 15 de febrero de 2007.
        Es una serie Manga que cuenta la historia de un joven ninja hiperactivo llamado Naruto Uzumaki que hará todo lo posible por ascender al máximo grado ninja de su aldea con el propósito de ser reconocido como alguien importante dentro de su aldea. Dentro de él reside encerrado en su interior el Zorro de Nueve Colas (Kyubi), un demonio que atacó a la Aldea Oculta de la Hoja matando a muchas personas. Por lo que que Naruto es maltratado ahora por los ciudadanos de la aldea por considerarle como el propio Kyubi.
        
        La historia sigue a Naruta y al crecimiento indidividual de sus amigos junto a su desarrollo como ninja. Naruto se relaciona con Sasuke Uchiha y Sahura Haruno, quienes forman el Equipo 7 junto a su sensei Kakashi Hatake. Mientras ellos aprenden nuevas habilidades de ninja, moldear su chakra y conocer a nueva gente y escenarios, Naruto lucha por su sueño. Durante su camino conocerán a los tres legendarios ninja: Jiraiya, Orochimaru y Tsunade; y se encontrarán con varios enemigos con los que poder superarse día a día.
        </p>";
    }
    function mostrarDetalles($personaje){
        echo "<h2>$personaje->personaje</h2>";
        echo "<p>$personaje->descripcion</p>";
    }
}
?>

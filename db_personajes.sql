-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2020 a las 13:27:53
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_personajes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personajes`
--

CREATE TABLE `personajes` (
  `id` int(11) NOT NULL,
  `personaje` varchar(30) NOT NULL,
  `descripcion` text NOT NULL,
  `id_clan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personajes`
--

INSERT INTO `personajes` (`id`, `personaje`, `descripcion`, `id_clan`) VALUES
(5, 'Hiashi', 'Es un ninja de rango jōnin de Konohagakure y el actual líder del Clan Hyūga. Es el hermano gemelo de Hizashi Hyūga y miembro de la rama principal del Clan. Hiashi tiene dos hijas: Hinata y Hanabi, además de hacerse cargo de Neji Hyūga.', 3),
(6, 'Hinata', 'Es una kunoichi de rango Chūnin de Konoha y antigua heredera de la rama principal del Clan Hyūga. Es hija de Hiashi, prima de Neji y hermana de Hanabi. Formó parte del Equipo Kurenai, siendo compañera de Kiba Inuzuka y Shino Aburame.', 3),
(7, 'Hizashi', 'era el padre de Neji Hyūga y el hermano gemelo de Hiashi Hyūga, aunque por nacer en segundo lugar, fue puesto en la rama secundaria.', 3),
(8, 'Neji', 'Fue un Jōnin de Konohagakure, miembro del Equipo Guy junto con sus compañeros Rock Lee y Tenten. Pertenecía al Clan Hyūga, uno de los más poderosos de Konoha. Fue considerado uno de los ninjas más fuertes de su generación y era conocido por todos como un genio.', 3),
(9, 'Akamaru', 'Es un ninken (perros ninjas) perteneciente al Clan Inuzuka en Konohagakure. Es el compañero y mejor amigo de Kiba Inuzuka.', 4),
(10, 'Kiba', 'Es un shinobi de Konohagakure de rango Chūnin perteneciente al Clan Inuzuka. Forma parte del Equipo Kurenai, junto con sus compañeros Hinata Hyūga y Shino Aburame.', 4),
(11, 'Kuromaru', 'Es el compañero canino de Tsume Inuzuka, la madre de Kiba Inuzuka.\r\n\r\n', 4),
(12, 'Tsume', 'Es una kunoichi de rango Tokubetsu Jōnin de Konohagakure. Es miembro del Clan Inuzuka y madre de Hana y Kiba Inuzuka. Al igual que el resto de su Clan, tiene como compañero un Ninken llamado Kuromaru.', 4),
(13, 'Shikaku', 'Fue el Comandante Jōnin de Konohagakure. Junto a Chōza Akimichi e Inoichi Yamanaka formaron una generación de la Formación Ino-Shika-Chō. Era miembro del Clan Nara y dominaba las técnicas de Imitación de Sombras, además de tener una inteligencia comparable o mayor que la de su hijo, Shikamaru Nara. Estaba casado con Yoshino Nara. Era el jefe estratega de la Gran Alianza Shinobi.', 5),
(14, 'Shikamaru', 'Es un ninja de Konoha que pertenece al Clan Nara. Fue miembro del Equipo Asuma junto con sus compañeros Chōji Akimichi e Ino Yamanaka. Shikamaru fue el subcomandante de la Cuarta División de la Gran Alianza Shinobi durante la Cuarta Guerra Mundial Shinobi. Varios años después, se convirtió en el nuevo líder del Clan Nara y en el consejero del Séptimo Hokage.', 5),
(15, 'Asuma', 'Fue hijo del difunto Tercer Hokage y tío de Konohamaru. Fue líder jōnin del Equipo 10, compuesto por Shikamaru Nara, Chōji Akimichi e Ino Yamanaka y, antiguamente, era miembro de Los 12 Guardianes Ninja.\r\nSu especialidad en jutsus, eran las cuchillas de chakra.', 6),
(16, 'Hiruzen', 'Fue el Tercer Hokage de Konohagakure, en su juventud era el estudiante de los dos primeros Hokages, Hashirama y Tobirama Senju junto a sus compañeros, Homura Mitokado y Koharu Utatane, y fue maestro de Jiraiya, Tsunade y Orochimaru, los legendarios Sannin.\r\nHiruzen destacaba al poder invocar a el rey mono: Emma. Y tambien al dominar todos los jutsus de Konohagakure.', 6),
(17, 'Konohamaru', 'Es hijo de dos ANBU de Konohagakure, nieto del Tercer Hokage y el sobrino de Asuma Sarutobi.', 6),
(18, 'Hashirama', 'Fue el Primer Hokage  de Konohagakure, un ninja reconocido por ser miembro y líder del Clan Senju durante su tiempo, además de la pasada Reencarnación de Asura Ōtsutsuki. Fue conocido por crear y dominar el Elemento Madera. Fundó Konoha junto a Madara Uchiha. Es considerado como el shinobi más grande y poderoso de su época, llegando a ser considerado como el dios de los shinobis. Fue resucitado por Orochimaru en la Cuarta Guerra Mundial Shinobi.', 7),
(19, 'Tobirama', 'Fue el Segundo Hokage de Konohagakure. Hermano menor de Hashirama Senju y tío abuelo de Tsunade y Nawaki. Fue resucitado dos veces por Orochimaru. La primera vez fue en la batalla contra Hiruzen Sarutobi y la segunda en la Cuarta Guerra Mundial Shinobi. Principalmente utilizaba el suiton (elemento agua). Fue famoso por crear muchos de los principales jutsus de Konoha.', 7),
(20, 'Tsunade', 'Es una de los legendarios Sannin junto con Orochimaru y Jiraiya, siendo también conocida por ser una de las kunoichis más fuertes y la mejor Ninja Médico del mundo. Se convirtió en la Quinta Hokage, después de que Hiruzen Sarutobi muriera. Además, fue mentora de Shizune, Sakura Haruno e Ino Yamanaka. Se destacaba en utilizar ninjutsu medico y la legendaria invocacion de Katsuyu.', 7),
(21, 'Fugaku', 'Fue el líder del Clan Uchiha, así como de la Policía Militar de Konoha, esposo de Mikoto Uchiha, y el padre de Itachi Uchiha y Sasuke Uchiha. Como líder del clan Uchiha y de la Policía Militar de Konoha, Fugaku era un ninja formidable, es probable que él conociera y dominara todas las técnicas del clan, además de ser el más fuerte en ese entonces entre los Uchiha. Se presume que era muy versado en el Shuriken jutsu al Sasuke señalar que Itachi lo había superado en dicha área.', 8),
(22, 'Itachi', 'Era el hermano mayor de Sasuke Uchiha. Fue un prodigioso shinobi de Konohagakure infiltrado en la organizaciónc ANBU como un doble espía. Después de masacrar al Clan Uchiha, se unió a Akatsuki donde su compañero asignado fue Kisame Hoshigaki, en el anime su primer compañero fue Jūzō Biwa. Llevaba el anillo \"Escarlata\" en el dedo anular derecho.Destaca en el uso de Genjutsus gracias a su poderoso sharingan.', 8),
(23, 'Sasuke', 'Es el deuteragonista de la serie y uno de los supervivientes del Clan Uchiha. Es hijo de Fugaku Uchiha y Mikoto Uchiha, hermano de Itachi Uchiha, así como la Reencarnación actual de Indra Ōtsutsuki. A pesar de crear relaciones con los miembros del Equipo Kakashi, Sasuke decidió desertar de Konohagakure en busca del poder necesario para vengar a su clan y asesinar a Itachi. Luego de descubrir la verdad de su hermano, fundó Taka, fue un aliado temporal de Akatsuki y se convirtió en un criminal internacional. Luego de hablar con Hashirama Senju decidió seguir el sueño de su hermano, colaborar con las Fuerzas Aliadas Shinobi y se colocó como meta realizar una revolución en el Mundo Shinobi. Después de la Cuarta Guerra Mundial Shinobi, terminaría cediendo ante la mentalidad de Naruto Uzumaki, regresando a la aldea y dedicando su vida a protegerla y a sus habitantes, pasando a ser referido como el Kage de Soporte. Destaca en el uso de Raiton y el sharingan.', 8),
(24, 'Obito', 'Era compañero de Kakashi Hatake y Rin Nohara, alumno de Minato Namikaze y fue quien le dio a Kakashi su Sharingan izquierdo. Después de su \"muerte\" reapareció como Tobi . Él era el verdadero líder de Akatsuki. Era uno de los antagonistas principales de la serie, hasta su derrota a manos de la Alianza Shinobi y su redención a manos de Naruto Uzumaki. Él mismo se había auto-proclamado como Madara Uchiha para provocar temor en sus contrarios. Además de esto, fue el segundo Jinchūriki del Diez Colas. Destaca en el uso del Kamui (Tecnica especial del sharingan)', 8),
(25, 'Madara', 'Fue un legendario shinobi, co-fundador de Konoha y líder del Clan Uchiha durante su tiempo. Además, fue la pasada Reencarnación de Indra Ōtsutsuki. Luego, fue revivido en la Cuarta Guerra Mundial Shinobi para luchar contra la Gran Alianza Shinobi, revelando sus verdaderas intenciones, haciéndolo el antagonista principal de la serie. Madara logró capturar a las nueve Bestias con Cola, sellarlas en la Estatua Demoníaca del Camino Exterior y, de esa manera, convertirse en el tercer y último Jinchūriki del Diez Colas. Destaca en poseer el Sussano perfecto.', 8),
(26, 'Kushina', 'Era la madre de Naruto Uzumaki y la esposa del Cuarto Hokage Minato Namikaze. Era una kunoichi perteneciente al Clan Uzumaki de Uzushiogakure y fue la segunda Jinchūriki de Kurama. Destaca en el uso del jutsu especial de la familia uzumaki: \"Cadenas de chakra\".', 9),
(27, 'Nagato', 'Mejor conocido como Pain, era uno de los más poderosos shinobi, y el líder reconocido de Akatsuki y de Amegakure. Todos los miembros de Akatsuki se referían a él como “Líder”, excepto Konan quien lo llamaba por su nombre, Pain.También era usuario del dōjutsu legendario, el Rinnegan, quien fue dado por Madara Uchiha antes de su muerte e implantado en Nagato cuando sólo era un niño. En su estadía en la organización trabajaba con Konan y recibía órdenes de Obito desde las sombras. Destaca en el uso de Jutsus especiales del Rinnegan.', 9),
(28, 'Naruto', 'Es el protagonista de la serie del manga y anime Naruto y Naruto Shippūden. Es residente de Konohagakure, hijo del Cuarto Hokage, Minato Namikaze y su esposa Kushina Uzumaki, además de ser la actual Reencarnación de Asura Ōtsutsuki. Desde el día de su nacimiento hasta que le fue extraído por Madara Uchiha fue el Jinchūriki de la mitad Yang de Kurama y el más reciente de la mitad Yin de Kurama. Finalmente recibiría la mitad extraída de Kurama, unificándose con su otra mitad en el interior de éste. También posee parte del Chakra de las otras Bestias con Cola, convirtiéndose en un Jinchūriki para cada uno de los Bijū y por éstas razones se lo ha nombrado como el Pilar Humano del Poder del Diez Colas. Fue miembro del Equipo Kakashi junto a Sakura Haruno y Sasuke Uchiha. Actualmente es el Séptimo Hokage (七代目火影, Nanadaime Hokage; que significa \"Séptima Sombra del Fuego\") de Konoha, cumpliendo su sueño. Destaca en el uso del Multiclones de sombra y El rasengan.', 9),
(29, 'Ino', 'Es una kunoichi de rango chūnin de Konohagakure, hija de Inoichi Yamanaka. Es una Tipo Sensor con conocimientos de Ninjutsu Médico, pertenece al Clan Yamanaka y es miembro del Equipo Asuma, junto con sus compañeros Chōji Akimichi y Shikamaru Nara. Posteriormente, se convirtió en esposa de Sai y madre de Inojin Yamanaka.', 10),
(30, 'Inoichi', 'Era un Jōnin de Konoha, y junto a Shikaku Nara y Chōza Akimichi, es una parte del primer trío Ino-Shika-Cho, así como el padre de Ino Yamanaka. Dirige la florería de Konoha. Es el líder de la División de Inteligencia de la Gran Alianza Shinobi. Él está bien versado en todas las técnicas secretas de su clan. Durante la Invasión de Konoha en la Parte I, Inoichi, hábilmente, realiza una confusión mental para que los invasores se encuentren con la lucha en contra de sus propios aliados sin ningún tipo de autocontrol. También utiliza el Jutsu de Transferencia de Mentes.', 10),
(31, 'Jiraiya', 'Jiraiya fue uno de los legendarios Sannin junto con Tsunade y Orochimaru, quienes fueron entrenados por el Tercer Hokage (Hiruzen Sarutobi). Escribió una popular serie de libros para adultos, llamada ICHA ICHA, por esto y entre otras muchas razones, Naruto lo llama Sabio Pervertido (Ero-sennin). También fue conocido como el Sabio Sapo, gracias a sus invocaciones de sapos y por la habilidad de entrar en el Modo Sabio. En su protector tenía el kanji Aceite como símbolo del Monte Myōboku. Jiraiya era hábil con el taijutsu, a pesar de que no lo utilizó en casi ninguna de sus peleas debido a que nunca fue su método de combate preferido, lo que más destaca es su fuerza física y velocidad. Era un experto con el Jutsu de Invocación, pudiendo utilizar variantes como la Invocación: Técnica Destructor de Cesta de Comida utilizando a Gamahiro, o invocar el estómago de Iwagama con la Invocación: Unión con la Boca de Sapo. Siendo un shinobi de alto nivel, Jiraiya dominó cuatro transformaciones de la naturaleza: fuego, viento, tierra y agua, algo difícil de conseguir, pues la mayoría de shinobis de alto nivel, sólo logran dominar dos naturalezas. Jiraiya había demostrado estar muy bien informado sobre los Jutsus de Sellado. Gracias a que Jiraiya posee grandes reservas de chakra, él pudo ser entrenado en el Senjutsu, dándole la capacidad de entrar en el Modo Sabio, una transformación que le permitió utilizar la energía natural para mejorar en gran medida todas sus habilidades.\r\n', 11),
(32, 'Kakashi Hatake', 'Kakashi Hatake es un shinobi de Konohagakure. Es un Jōnin, ex-ANBU y el líder del Equipo 7. Fue conocido mundialmente por su uso del Sharingan, lo que le valió el apodo de Kakashi el Ninja que Copia y Kakashi del Sharingan. En su adolescencia fue alumno de Minato Namikaze y compañero de equipo de Obito Uchiha y Rin Nohara. También fue el capitán de la Tercera División de la Gran Alianza Shinobi. Kakashi se conoce desde muy joven como un prodigio de inmenso talento, considerado por muchos como el mejor de su generación. Esto le permitió ser el primero en graduarse a la edad de cinco años, y luego convertirse en un Chunnin a los seis años. Kakashi ha demostrado ser muy hábil en el Taijutsu, incluso considerándolo mejor que Rock Lee. Su velocidad también ha demostrado ser impresionante, siendo capaz de interceptar a un rival incluso desde gran distancia. Su destreza en batalla y su velocidad le permite capturar eficazmente a sus oponentes con la guardia baja con un rápido derribo y evadir fácilmente ataques. Kakashi se basa principalmente en su dominio del Ninjutsu, del que tiene un vasto arsenal debido a su Sharingan, del cual han dicho que Kakashi copió mil técnicas. ', 11),
(33, 'Sakura Haruno', 'Sakura Haruno es uno de los personajes principales de la serie. Es una kunoichi de nivel Jōnin, miembro del Equipo Kakashi y una gran amiga de Naruto Uzumaki. Después de su entrenamiento con Tsunade, se convierte en una Ninja Médico. Sakura tiene el cabello de color rosa claro y brillante, unos grandes ojos verdes y piel de un blanco níveo. Sakura ha demostrado tener mal genio a veces y su ira ha repercutido en la gente en más de una ocasión (la víctima habitual suele ser Naruto), pero es relativamente amable, alegre y positiva.', 11),
(34, 'Orochimaru', 'Orochimaru es un shinobi veterano de Konohagakure, miembro del Equipo Hiruzen y uno de los legendarios Sannin, junto con sus compañeros Jiraiya y Tsunade. Fue miembro de la organización Raíz bajo el liderazgo de Danzō y posteriormente desertó de la aldea por ser descubierto haciendo experimentos con los aldeanos, además de ser un ex miembro de Akatsuki. En su deseo de aprender todos los jutsus del mundo y ser el más grande ninja, consiguió un gran conocimiento sobre varias técnicas, que van desde simples técnicas ofensivas, que sin embargo llegan a ser mortales cuando son realizadas por él, a las más altas técnicas de clasificación, o más complicadas. Orochimaru es uno de las tres personas capaces de realizar la Invocación: Reencarnación del Mundo Impuro, lo que le permitió reencarnar a los muertos. Dominó todas las naturalezas básicas del chakra: Fuego, Viento, Rayo, Tierra y Agua, además del Yin y Yang; proeza que muy pocos shinobis han podido lograr por propia cuenta.', 11),
(35, 'Minato Namikaze', 'Minato Namikaze, también conocido como El Destello Amarillo de Konoha, fue el Cuarto Hokage de la Aldea Oculta de la Hoja. Fue discípulo de Jiraiya y maestro de Kakashi Hatake, Obito Uchiha y Rin Nohara. También fue el esposo de Kushina Uzumaki y el padre de Naruto Uzumaki. Además, fue el primer Jinchūriki de la mitad Yin de Kurama. Él soñaba con ser reconocido por los aldeanos de Konoha al convertirse en hokage. Minato era un ninja con mucho talento, al haber sido considerado un genio que aparece sólo una vez por generación. Se graduó en la Academia Ninja a la edad de diez años y fue introducido en un equipo de Genin bajo la tutela de Jiraiya. Uno de los atributos más destacables era su gran velocidad y sus reflejos aparentemente instantáneos. fue famoso por su técnica única de espacio-tiempo, el Jutsu Dios del Trueno Volador, que esencialmente le permitía movilizarse a cualquier lugar con el uso de sellos especiales, casi como si se teletransportan. El jutsu le valió el apodo del \"Destello Amarillo de Konoha\", debido a la velocidad imposible de igualar en la que se trasladaba al usar esta técnica. Minato era muy conocedor de fūinjutsu, en parte por Kushina, que le enseñó algunos de los sellos del clan Uzumaki. Aprendió a utilizar el Senjutsu directamente del Monte Myōboku, enseñándole a recolectar la Energía Natural y concentrarla para mejorar sus técnicas.', 11),
(36, 'Gaara', 'Gaara es un shinobi de Sunagakure y el Quinto Kazekage, fue el Comandante General del ejército de la Gran Alianza Shinobi y Comandante de la Cuarta División. Es el hijo menor del Cuarto Kazekage, Rasa y Karura, hermano menor de Temari y Kankuro. Fue el tercer Jinchūriki de Shukaku. Gaara se ganó el apodo de Gaara de la Cascada de Arena. Es el más joven de los hijos del Cuarto Kazekage. Gaara ha sido un shinobi muy poderoso desde su aparición en la serie. Podía hacer temblar de miedo a quienes observaban su poder y, según Kankurō, él nunca había sido lastimado en ninguna de las misiones que había hecho, incluso en algunas de rango -A. En la segunda parte, demostró que era un shinobi muy capaz y confiable al ser nombrado como Kazekage y luego, en la Cuarta Guerra Ninja, donde fue nombrado como Comandante General de la Armada. Aún sin poseer a Shukaku en su interior, sigue siendo un shinobi muy fuerte e inteligente, cosa que demostró al vencer a shinobis de renombre, como el Cuarto Kazekage, el Segundo Mizukage y luego enfrentarse a Madara Uchiha en una batalla. Gaara posee la habilidad de manipular la arena, se desplaza por el aire para servir a diversos fines. La cantidad de arena que puede controlar al mismo tiempo es bastante grande. Si se carece de arena en abundancia, Gaara puede romper los minerales de la tierra para crear más arena. \r\nmantiene su propia arena mejorada con él en todo momento, en una calabaza, también hecha de la arena en su espalda. Debido a que esta arena ya está imbuida de su chakra, Gaara tiene un mejor control sobre ella, permitiendo realizar ataques más fuertes y más rápidos con ella.\r\n', 11),
(38, 'Rock Lee', 'Rock Lee es un ninja de rango Jōnin perteneciente a Konohagakure. Hace parte del Equipo Guy, junto a sus compañeros Neji Hyūga y Tenten, y fue uno de los miembros que formaron parte de la Tercera División durante la Cuarta Guerra Mundial Shinobi. Durante su tiempo como estudiante en la Academia Ninja, Lee demostró no tener talento para el ninjutsu y genjutsu. Fue la burla de sus compañeros debido a esto. Incluso sus maestros lo calificaron como \"otro\" fracaso, aunque más tarde se graduó. Lee perseveró, centrándose sólo en taijutsu. Durante la segunda parte, su aspecto cambio en menor grado de sus amigos. Los cambios más notables son que que ha crecido considerablemente, y lleva un chaleco para emular más a su sensei. Lee se ha convertido en un maestro de Taijutsu, ahora pudiendo realizar el Remolino de la Hoja. Lee ha demostrado ser muy rápido, incluso con las pesas en las piernas, su velocidad y destreza son superiores a las de un ninja más experimentado, y sólo en circunstancias determinadas su Taijutsu no es suficiente para derrotar a un oponente. A través de las enseñanzas de Guy, Lee ha aprendido a abrir las primeras seis de las Ocho Puertas de chakra, una hazaña que es difícil, incluso para el ninja más talentoso; incluso la primera vez que Kakashi vio abrir las puertas a Lee, afirmó que era un maestro por el simple hecho de poder abrirlas con el simple esfuerzo. Debido al peligro que las puertas presentan al cuerpo, Lee sólo se permite abrirlos en determinadas circunstancias (por ejemplo, situaciones de vida o muerte, la protección de alguien querido, o la defensa de su camino del ninja). ', 11),
(39, 'Might Guy', 'Might Guy es un Shinobi de nivel jōnin de Konohagakure. Es el líder del Equipo Guy, compuesto por Neji Hyūga, Rock Lee y Tenten.Gai es uno de los mejores ninja de Konoha, y un especialista en Taijutsu. A pesar de haberse considerado un perdedor cuando era un niño, es un ninja con mucho talento. Se graduó en la Academia a los 7 años y se convirtió en Chūnin a los 11 años. Itachi Uchiha advirtió a Kisame que no subestime a Gai. Tomando en cuenta de que Itachi y Kisame son ninjas extremadamente peligrosos, tal advertencia es un indicador que Gai es un excelente combatiente. Esto queda comprobado en la pelea contra los Jinchurikis revividos en su Versión Dos, ya que es capaz de mantener a raya al Seis Colas y su nube corrosiva.\r\nMás tarde, en la pelea contra Madara Uchiha en su modo Jinchūriki del Diez Colas, Gai adquiere un inmenso poder al abrir las 8 puertas, lo cual le permite hacer frente y dejar muy mal herido a Madara. Lo que convierte a Gai en uno de los ninjas más fuertes del mundo de Naruto.Gai es un maestro de Taijutsu muy logrado, con conocimientos avanzados, si no de habilidad en varios estilos y técnicas de Taijutsu.Al igual que Lee, Gai es capaz de utilizar y abrir las Ocho Puertas, una hazaña que es difícil, incluso para el ninja más talentoso. Su dominio es suficiente ya que él es capaz de utilizar varias técnicas prohibidas después de la apertura de las puertas, haciendo de él una verdadera fuerza formidable en el campo de batalla.A diferencia de Lee, que se especializa en Taijutsu porque no puede usar Ninjutsu y Genjutsu, Guy es completamente capaz de utilizar las otras dos formas de habilidades ninja.', 11),
(40, 'Sai', 'Sai es un joven ninja que pertenecía a la Raíz y se especializa en las técnicas que utilizan tinta. Fue un miembro temporal del Equipo Kakashi durante la ausencia de Sasuke Uchiha.Como un miembro de Raíz, Sai es un ninja de gran capacidad, considerado por Danzō como el miembro más fuerte de su generación. Danzō incluso tenía suficiente fe en las habilidades de Sai ya que le dio la tarea de matar a Sasuke Uchiha sin la ayuda de nadie. A su vez, siempre se ha mostrado como un Ninja extraordinariamente observador, ya que presta mucha atención a los detalles. Ello le permite darse cuenta rápidamente de los engaños o las trampas.A pesar de no ser su especialidad, Sai ha demostrado ser experto en taijutsu. Él fue capaz de reaccionar y bloquear el intento de Naruto para clavarle un kunai con mucha facilidad, e incluso logró capturar a Yamato durante el entrenamiento. También fue capaz de dominar a Kabuto Yakushi muy fácilmente, bloquear el intento de Sasuke Uchiha de apuñalar a Naruto, Sasuke, incluso comento que bloqueó el ataque de la manera más apropiada, también fue capaz de detener un golpe de Karui que se iba a lanzar contra Naruto. Durante la Cuarta Guerra Mundial Shinobi, él fue capaz de romper el cuello de Shin con un ataque de rodilla en pleno vuelo. También es muy hábil con la técnica del Jutsu de Cuerpo Parpadeante. Como un ANBU, Sai también utiliza un Tanto.Sai desde pequeño ha tenido una gran habilidad como pintor siendo elogiado por sus pinturas, sin embargo no nombraba a ninguna de ellas con un título debido a su falta de emociones. Sus capacidades con la pintura fue utilizada como base para el estilo de pelea de Sai por lo que su jutsu principal es la Imitación de Imagen: Super Bestias.\r\n', 11),
(41, 'Kabuto Yakushi', 'Kabuto Yakushi fue uno de los antagonistas de la serie y fue el ex-médico personal, mano derecha y asistente de Orochimaru. A pesar que siempre actuó como un subordinado encubierto de Orochimaru, durante la Cuarta Guerra Mundial Shinobi se convirtió en una pieza invaluable contra la Gran Alianza Shinobi gracias a sus shinobis revividos. Kabuto tiene los ojos color negro con el cabello de color grisáceo, utiliza una cola de caballo, con anteojos circulares. Como espía de la Raíz, Kabuto se infiltró en las Cinco Grandes Naciones Shinobi, en las cuales vistió los uniformes y protectores respectivos de cada aldea. La personalidad de Kabuto es difícil de discernir, ya que es un hombre sádico, pero amable, y con humor ácido. Tiene un carácter cambiante, lo que lo hace muy adaptable, aunque en general es una persona introvertida y solitaria. Le gusta \"jugar\" con la mente y particularmente con las emociones de sus enemigos, señalando sus debilidades, a fin de manipularlos para cumplir sus objetivos. ', 11),
(42, 'Shukaku', 'Shukaku, también conocido como el Una Cola (Ichibi), es una de las Bestias con Cola creadas por el Sabio de los Seis Caminos y una bestia que ha estado sellada dentro de tres jinchūrikis a lo largo de su existencia, siendo Gaara, el Quinto Kazekage de Sunagakure, el más reciente. Shukaku es un tanuki de color arena oscura y líneas azules (negras en el manga) por todo el cuerpo, su cara, además de su única cola la cual es gigantesca y que al aparecer esta formada por varias colas más pequeñas. Tiene una boca cóncava irregular, la esclerótica de sus ojos son negros con un iris de color amarillo y una pupila en forma de Shuriken con un punto en cada esquina. Shukaku es inteligente, pero también incoherente, dándole un aire de borracho, lo cual encaja bien con la típica representación del tanuki en el folclore japonés. De hecho, Shukaku se puede traducir como \"borracho\" en japonés. Como otros bijū, su innata ira y sed de sangre influencia su comportamiento, y que disfruta la oportunidad de matar a cualquiera a la vista.', 11),
(43, 'Kurama', 'Kurama , también conocido como el Nueve Colas (Kyūbi) es una Bestia con Cola que se encuentra sellada dentro de Naruto Uzumaki, siendo considerada la más poderosa de las nueve bestias creadas por el Sabio de los Seis Caminos. A pesar que en la mayor parte de la serie, el chakra de Kurama estuvo dividido en dos partes, la mitad Yin y la mitad Yang, finalmente volvería a unificarse dentro de Naruto luego de los sucesos de la Cuarta Guerra Mundial Shinobi. Kurama es un kitsune con el pelaje color rojo-naranja y ojos rojos, posee una estructura superior del cuerpo del ser humano, con pulgares opuestos en las manos con garras. Se sabe que posee un sentimiento de odio a la humanidad, esto puede ser debido a que ha sido manipulado varias veces por estos o a su percepción mentido, pero durante el transcurso de la guerra, ha ido cambiando de opinión hasta el punto de entablar amistad con Naruto Uzumaki.\r\nComo el Nueve Colas, tiene el mayor número de colas; se considera la bestia con cola más poderosa, discriminando a las otras, causando que el Shukaku tuviera un gran odio hacia él.', 11),
(44, 'Kizame Hoshigaki', 'Kisame Hoshigaki, conocido como el Monstruo de la Niebla Oculta, era un ninja renegado de Kirigakure, ex miembro de los Siete Espadachines Ninja de la Niebla y anteriormente compañero de Itachi Uchiha en Akatsuki.Su rasgo más característico es que se parece mucho a un tiburón. Kisame, de hecho, significa \"Tiburón demonio\". Su piel es de color azul pálido, tiene unos ojos blancos y pequeños, y en las mejillas tiene unas marcas que parecen agallas. Tiene el pelo de color  azul encrespado, y es bastante alto. Al igual que todos sus compañeros espadachines, Kisame tiene los dientes afilados. Va portando una enorme espada, normalmente envuelta en vendas, llamada Samehada hecha de escamas de tiburón. Su función no es cortar, sino desgarrar aquello que toca. Además, roba el chakra de sus rivales y tiene voluntad propia, ya que sólo permite que Kisame la use, Samehada es capaz de regresar a la mano de Kisame por voluntad propia. Le encantaba pelear. Sin embargo, por lo general, no puede terminar sus batallas, siendo Itachi su compañero, que sólo lucha cuando es necesario. Kisame no duda en mutilar a sus oponentes, como se ve cuando sugirió cortarle las piernas a Naruto y a Killer B para hacer más fácil sus capturas y para evitar que estos escaparan. A pesar de su naturaleza agresiva, Kisame es muy perceptivo en la batalla, al parecer, siempre está al tanto de cualquier peligro para su persona y de inmediato puede reaccionar ante ella. Él también se destaca por ser analítico, capaz de deducir rápidamente los conceptos básicos detrás de la técnica del oponente.', 11),
(45, 'Rikudo Sennin', 'Hagoromo Ōtsutsuki, quien más tarde sería conocido como el Sabio de los Seis Caminos (Rikudō Sennin), fue un monje que deseaba que la paz reinara en el mundo. Fue una figura alabada como un dios que fundó el Ninshū y creó el mundo shinobi en la tierra. Fue hijo de Kaguya Ōtsutsuki y el primer humano en nacer con chakra. Poseía el Rinnegan, el Dōjutsu más poderoso de los tres legendarios Dōjutsus. Derrotó al Diez Colas con la ayuda de su hermano y selló la bestia dentro de sí mismo, convirtiéndose así en el primer jinchūriki en la historia. A pesar de que no es conocido todo el potencial de Hagoromo, es considerado la figura más poderosa de la historia, solo superado por su propia madre Kaguya, además fue el primer hombre en comprender la naturaleza del Chakra en sí. Esta sabiduría, junto con su Kekkei Mōra, el Rinnegan, le permitió crear la forma original del Ninjutsu, el Ninshū. En el anime, Hagoromo despertó el Sharingan. Al ver que no podía detener a Hamura quien estaba siendo controlado por su madre, Hagoromo se vio en la obligación de herirlo mortalmente lo que provocó que despertara el Mangekyō Sharingan. Hagoromo pudo controlar rápidamente su nuevo poder logrando utilizar el Susanoo y elevarlo a su forma máxima, con la cual fue capaz de luchar a la par con el Diez Colas, pudiendo bloquear una Bola Bestia con Cola con suma facilidad solo utilizando su espada. Debido a que simultáneamente despertó el Mangekyō Sharingan junto al Rinnegan, Hagoromo aparentemente no sufría los efectos secundarios del uso continuo de dicho ojo. Hagoromo desarrolló el primer jutsu capaz de sellar una Bestia con Cola dentro de un cuerpo humano, convirtiéndose en el primer Jinchūriki de la historia. Al poseer al Diez Colas encerrado en su interior, Hagoromo desarrolló un poder desmedido y un chakra insuperable que le permitía controlar ciertas Armas Atesoradas que requerían grandes reservas de chakra para ser utilizadas, provocando que un humano ordinario falleciera en el intento.\r\n', 11),
(46, 'Yamato ', 'Yamato es un miembro de ANBU, y un ninja de Konohagakure del mismo rango que Kakashi Hatake. Aparece durante la segunda parte del anime. Además, fue el líder temporal del Equipo 7. Se desconoce su nombre real, durante su estadía en Raíz se le conocía como Kinoe, luego adoptó el nombre Tenzō y por último, le fue dado su nombre en clave actual (Yamato) por Tsunade. Como miembro del ANBU, Yamato es muy competente en varias áreas de combate shinobi, incluyendo el seguimiento y captura. Durante su examen de aptitud de su nuevo equipo, demostró gran habilidad en el Taijutsu y el uso inteligente de las tácticas de distracción. Además, gracias a su formación como ANBU, Yamato tiene instintos muy afianzados de batalla, lo que le permite reaccionar rápidamente a las amenazas.Compartiendo el mismo ADN que el Primer Hokage, Yamato posee el Kekkei Genkai de Hashirama el Elemento Madera. Este Kekkei Genkai le permite combinar el Elemento Tierra, utilizándolo en su mano derecha y el Elemento Agua, utilizándolo en la mano izquierda, gracias a esto, puede crear plantas con vida como los árboles y la hierba. Yamato, al tener el ADN del primer Hokage y la habilidad de utilizar el Mokuton, es capaz de suprimir el chakra de un bijuu con la técnica secreta de Hashirama Senju llamada \"Estilo Hokage de Jutsu Sexagenario\".', 11);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_clan` (`id_clan`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`id_clan`) REFERENCES `clanes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

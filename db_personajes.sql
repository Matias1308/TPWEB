-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2020 a las 11:32:42
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
-- Estructura de tabla para la tabla `clanes`
--

CREATE TABLE `clanes` (
  `id` int(11) NOT NULL,
  `clan` varchar(30) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `clanes`
--

INSERT INTO `clanes` (`id`, `clan`, `descripcion`) VALUES
(3, 'Hyuga', 'Es uno de los cuatro clanes nobles de Konohagakure. Todos los miembros de este clan poseen desde el nacimiento su Kekkei Genkai, el Byakugan. El Clan Hyūga es considerado actualmente como el clan más poderoso de Konohagakure.'),
(4, 'Inuzuka', 'Es una familia de shinobis de Konohagakure conocida por combatir acompañados por perros ninja (algunos miembros del clan prefieren lobos), estos son considerados compañeros de armas y son fácilmente reconocibles por las distintivas marcas rojas con forma de colmillo que lucen en sus mejillas.'),
(5, 'Nara', 'Es conocido por ser un clan de Konoha que tiene la habilidad única de Manipular las Sombras y de tener una amplia zona donde crían ciervos. Los miembros de esta familia también han creado un libro de medicina.'),
(6, 'Sarutobi', 'El Clan Sarutobi es un clan influyente de Konohagakure. Junto al Clan Shimura, Clan Uchiha y el Clan Senju formaron Konoha. Ha producido varios miembros notables que han ocupado posiciones de alta autoridad. Los Sarutobi son famosos por su fuerza de voluntad, y por ser unos shinobis excepcionales, fuertes y habilidosos en las técnicas ninja. El clan también parece que posee una aptitud innata para la Transformación de la Naturaleza del Elemento Fuego, ya que todos los miembros conocidos poseen la naturaleza.'),
(7, 'Senju', 'Fue considerado el clan más poderoso del mundo shinobi durante la Era de Guerra entre Clanes. Durante este tiempo, sostuvo una ardua rivalidad con el Clan Uchiha, quien era el único que podía medirse con ellos. Ambos clanes, eran rivales y sostenían batallas feroces, pero, posteriormente, decidieron aliarse y formar Konohagakure. Son parientes lejanos del Clan Uzumaki.'),
(8, 'Uchiha', 'Es uno de los cuatro clanes nobles de Konohagakure. Fue considerado uno de los dos clanes más poderosos del mundo shinobi debido a su valioso Sharingan durante la Era de Guerra entre Clanes. Debido a sus grandes habilidades en todos los tipos de combates se ganaron el apodo de Clan de la Guerra.'),
(9, 'Uzumaki', 'Fue un prominente clan de la aldea Uzushiogakure. Actualmente el clan es reconocido como parte de Konohagakure, con la mayoría de sus miembros viviendo allí y siendo referidos como Familia Uzumaki. Son parientes lejanos del clan Senju. los Shinobis de Konoha, utilizan el símbolo del clan Uzumaki en sus chalecos, así como sobre los hombros de sus uniformes como señal de la amistad y buena voluntad entre las sus aldeas.'),
(10, 'Yamanaka', 'Es un clan de Konoha que se encarga de una tienda de flores. Son ninjas especialistas en el arte de manipular la mente. También tienen algunas habilidades sensoriales. Los miembros de este clan se caracterizan por su cabello rubio y sus ojos azules. Tienen la capacidad de leer la mente de un usuario lo cual es muy útil cuando se trata de buscar información y de interrogar a esa persona.'),
(11, 'Personajes Relevantes', 'Estos son otros personajes que son importantes y/o relevantes en la historia del anime, pero que su clan o es desconocido o no tiene tanta relevancia.');

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
(31, 'Jiraiya', 'Fue uno de los legendarios Sannin junto con Tsunade y Orochimaru, quienes fueron entrenados por el Tercer Hokage (Hiruzen Sarutobi). Escribió una popular serie de libros para adultos, llamada ICHA ICHA, por esto y entre otras muchas razones, Naruto lo llama Sabio Pervertido (Ero-sennin). También fue conocido como el Sabio Sapo, gracias a sus invocaciones de sapos y por la habilidad de entrar en el Modo Sabio. En su protector tenía el kanji Aceite como símbolo del Monte Myōboku. Jiraiya tuvo una muerte heróica a manos de su pupilo Nagato cuando se infiltró en la Aldea Oculta de la Lluvia intentando recabar información sobre el líder de Akatsuki. Su muerte no fue en vano del todo ya que pudo descifrar el secreto detrás de las habilidades de Pain y alertar sobre ello a Konoha.\r\nDe niño, Jiraiya fue un estudiante del Tercer Hokage junto con sus compañeros Orochimaru y Tsunade. Durante su niñez, desarrolló una rivalidad amistosa con Orochimaru y sintió afecto hacia su compañera Tsunade. Debido a que era el torpe del grupo, entrenó muy duramente, hasta el punto que Hiruzen le mostró la Técnica de Invocación para que aprendiera a usarla. Tras un tiempo, fue teletransportado hacia el Monte Myōboku por usar esta técnica sin tener ningún contrato con un animal. Cuando llegó a ese lugar, Fukasaku decidió entrenarlo debido a que lo reconoció como \"el niño que tendría que llegar al monte\" según una profecía del Gran Sapo Sabio. Así, alternaba su entrenamiento en Konoha con el Tercer Hokage, y después de sus misiones iba al Monte Myōboku a entrenar con los sapos. Jiraiya era hábil con el taijutsu, a pesar de que no lo utilizó en casi ninguna de sus peleas debido a que nunca fue su método de combate preferido, lo que más destaca es su fuerza física y velocidad. Una prueba de su fuerza es que fue capaz de empujar a Naruto hacia un acantilado varios metros lejano con un solo dedo. Jiraiya también era conocido como el \"Sapo Sabio\", debido a su afinidad natural por los sapos, y su utilización de técnicas relacionadas con sapos. Se le ha visto invocar a una gran cantidad de Sapos distintos para varios fines. Prueba de esto, es que podía invocar a los guerreros sapos más poderosos del Monte Myōboku: Gamahiro, Gamaken e incluso a Gamabunta, el cual pocos shinobis pueden convocar. Era un experto con el Jutsu de Invocación, pudiendo utilizar variantes como la Invocación: Técnica Destructor de Cesta de Comida utilizando a Gamahiro, o invocar el estómago de Iwagama con la Invocación: Unión con la Boca de Sapo. Siendo un shinobi de alto nivel, Jiraiya dominó cuatro transformaciones de la naturaleza: fuego, viento, tierra y agua, algo difícil de conseguir, pues la mayoría de shinobis de alto nivel, sólo logran dominar dos naturalezas. Jiraiya había demostrado estar muy bien informado sobre los Jutsus de Sellado, habiendo utilizado un número de ellos en toda la serie. Gracias a que Jiraiya posee grandes reservas de chakra, él pudo ser entrenado en el Senjutsu, dándole la capacidad de entrar en el Modo Sabio, una transformación que le permitió utilizar la energía natural para mejorar en gran medida todas sus habilidades.', 11),
(32, 'Kakashi Hatake', 'Es un shinobi de Konohagakure. Fue un Jōnin, ex-ANBU y el líder del Equipo 7. Fue conocido mundialmente por su uso del Sharingan, lo que le valió el apodo de Kakashi el Ninja que Copia y Kakashi del Sharingan. En su adolescencia fue alumno de Minato Namikaze y compañero de equipo de Obito Uchiha y Rin Nohara. También fue el capitán de la Tercera División de la Gran Alianza Shinobi. Después de los acontecimientos de la Cuarta Guerra Mundial Shinobi, Kakashi se convirtió en el Sexto Hokage de Konoha. Kakashi es el único hijo de Sakumo Hatake, también conocido como el Colmillo Blanco de Konoha. Su madre al parecer murió muy joven. Kakashi se conoce desde muy joven como un prodigio de inmenso talento, considerado por muchos como el mejor de su generación. Había recibido la máxima calificación y había mostrado una aptitud innata para las artes ninja. Esto le permitió ser el primero en graduarse a la edad de cinco años, y luego convertirse en un Chunnin a los seis años. Kakashi ha demostrado ser muy hábil en el Taijutsu, incluso considerándolo mejor que Rock Lee. Su velocidad también ha demostrado ser impresionante, siendo capaz de interceptar a un rival incluso desde gran distancia. Su destreza en batalla y su velocidad le permite capturar eficazmente a sus oponentes con la guardia baja con un rápido derribo y evadir fácilmente ataques. Kakashi se basa principalmente en su dominio del Ninjutsu, del que tiene un vasto arsenal debido a su Sharingan, del cual han dicho que Kakashi copió mil técnicas. Con este arsenal, puede atacar o defenderse de sus oponentes de numerosas maneras. También ha demostrado tener habilidades impresionantes en Genjutsu. Además de la gran cantidad de técnicas que conoce, también tiene un gran conocimiento sobre la Transformación de la Naturaleza. Él tiene como naturaleza de Chakra, el Elemento Rayo, el cual ha dominado y por el cual es reconocido por el enemigo. Gracias a su Sharingan, pudo copiar varias naturalezas de chakra, entre las cuales están el Elemento Agua, el cual controla a tal magnitud de poder utilizarlo sin una fuente de agua cercana. Kakashi también tiene Elemento Tierra y con este elemento puede crear un muro de piedra solida el cual es muy resistente, se ve que puede utilizarlo con mucha rapidez y facilidad. También, en el anime, ha demostrado el Elemento Fuego, y él esta lo suficientemente informado del Elemento Viento como para ayudar a Naruto en su entrenamiento. Kakashi pudo mejorar aún más su Sharingan mediante el desarrollo de su propio Mangekyō Sharingan. Éste despertó el jutsu visual a la par con Obito Uchiha justo después de que atravesara a su compañera de equipo, Rin, cuando estaban rodeados por ninjas de Kirigakure. Además, ha conseguido dominar un jutsu propio de su nuevo sharingan, llamado Kamui.\r\n', 11),
(33, 'Sakura Haruno', 'Sakura Haruno cuyo nombre actual es Sakura Uchiha es uno de los personajes principales de la serie. Es una kunoichi de nivel Jōnin, miembro del Equipo Kakashi y una gran amiga de Naruto Uzumaki. Después de su entrenamiento con Tsunade, se convierte en una Ninja Médico. Finalmente se convirtió en la esposa de Sasuke Uchiha y en madre de Sarada Uchiha. Sakura no tuvo muchas apariciones relevantes en el anime, a excepción de su ayuda médica en el ataque de Pain a Konoha y su aparición en la Gran Cuarta Guerra Ninja, en donde salva a Naruto, que había sido herido anteriormente por Obito. El control natural que Sakura posee de su Chakra había sido de gran ayuda durante los tres años que duró el entrenamiento que tuvo con Tsunade, ya que con esto aprendió rápidamente a utilizar la Palma Mística, incluso sin hacer ningún sello manual. Gracias a esto, Sakura se había convertido en una excelente Ninja Médico, y mostró ser capaz de curar heridas fatales con poco esfuerzo, aún cuando médicos más experimentados lo considerarían una causa perdida.', 11),
(34, 'Orochimaru', 'Es un shinobi veterano de Konohagakure, miembro del Equipo Hiruzen y uno de los legendarios Sannin, junto con sus compañeros Jiraiya y Tsunade. Fue miembro de la organización Raíz bajo el liderazgo de Danzō y posteriormente desertó de la aldea por ser descubierto haciendo experimentos con los aldeanos, además de ser un ex miembro de Akatsuki. Llevaba el anillo \"Vacío\" en el dedo meñique izquierdo. Fue uno de los principales antagonistas de la serie hasta su muerte a manos de Sasuke Uchiha. Durante la Cuarta Guerra Mundial Shinobi fue revivido por parte de su pupilo. Tras su pronta graduación de la Academia, Orochimaru siendo un Genin fue asignado como compañero de equipo de Jiraiya y Tsunade, a cargo de la tutela de Hiruzen Sarutobi. Sus padres murieron cuando él era muy joven, mientras que el Tercer Hokage reconoció rápidamente el talento natural de Orochimaru, diciéndole a menudo a Jiraiya que este debería ser más como él. A pesar de este don, el Tercer Hokage estaba al tanto de una maldad dentro del mismo, pero eligió fingir no notarlo porque esperaba que esta podría calmarse o eliminarse algún día. Mientras pasaban los años, éste formó una gran amistad con Jiraiya, aunque no carente de rivalidad. Siempre anduvo en busca de más poder, al punto de buscar capturar a La bestia de nueve colas (Kyubi), dentro de Naruto. Orochimaru, en su deseo de aprender todos los jutsus del mundo y ser el más grande ninja, consiguió un gran conocimiento sobre varias técnicas, que van desde simples técnicas ofensivas, que sin embargo llegan a ser mortales cuando son realizadas por él, a las más altas técnicas de clasificación, o más complicadas. En cuanto a las técnicas defensivas, Orochimaru utiliza tanto la Invocación: Rashōmon e Invocación: Triple Rashōmon, en la que se convoca a un número variable de grandes puertas demoníacas que son capaces de soportar incluso las formas más intensas de daños. Si es necesario, también puede colocar el Sello de los Cinco Elementos sobre un oponente, sellando su acceso al chakra y por lo tanto, haciéndolos inútiles en la batalla. Orochimaru es uno de las tres personas capaces de realizar la Invocación: Reencarnación del Mundo Impuro, lo que le permitió reencarnar a los muertos. Siendo un shinobi de alto nivel, Orochimaru dominó todas las naturalezas básicas del chakra: Fuego, Viento, Rayo, Tierra y Agua, además del Yin y Yang; proeza que muy pocos shinobis han podido lograr por propia cuenta. En su búsqueda por ganar la inmortalidad, Orochimaru ha hecho una serie de modificaciones a su cuerpo, haciendo que su forma natural adquiera la apariencia de una gigante serpiente blanca compuesta de muchas serpientes más pequeñas de ese mismo color. Esta forma tiene la ventaja que le permite estirar cualquier parte de su cuerpo a grandes longitudes, regenerar cualquier herida infligida sobre él y utilizar las serpientes para sus ataques y si Orochimaru se corta en pedazos, el cuerpo simplemente se reforma, haciéndolo muy difícil de matar. Además, la sangre que se libera al matar a las serpientes es venenosa, se evapora en el aire y causa la paralización de cualquier persona que lo ha respirado.\r\n', 11),
(35, 'Minato Namikaze', 'También conocido como El Destello Amarillo de Konoha, fue el Cuarto Hokage de la Aldea Oculta de la Hoja. Fue discípulo de Jiraiya y maestro de Kakashi Hatake, Obito Uchiha y Rin Nohara. También fue el esposo de Kushina Uzumaki y el padre de Naruto Uzumaki. Además, fue el primer Jinchūriki de la mitad Yin de Kurama. Fue resucitado por Orochimaru en la Cuarta Guerra Mundial Shinobi. Cuando era sólo un niño y estaba en la Academia Ninja, su compañera de clase Kushina Uzumaki pensaba que él era sólo un \"Flacucho medio-afeminado\". Él soñaba con ser reconocido por los aldeanos de Konoha al convertirse en hokage, pero Kushina consideraba que era un sueño imposible. Más tarde, cuando Kushina fue secuestrada por un grupo de ninjas de Kumogakure, ella dejó hilos de su cabello con la esperanza de que alguien la encontrara. Minato fue el único ninja de Konoha en demostrar ser lo suficientemente listo para entender la pista y fue capaz de rescatarla. Minato le había dicho que él siempre había admirado su cabello. En ese momento, ella ya no lo veía como un \"Flacucho medio-afeminado\", se había enamorado de él. Según quienes lo conocían, Minato era un ninja con mucho talento, al haber sido considerado un genio que aparece sólo una vez por generación. Se graduó en la Academia Ninja a la edad de diez años y fue introducido en un equipo de Genin bajo la tutela de Jiraiya. Éste tuvo un interés especial en Minato y lo aceptó como aprendiz, le enseñó La Técnica de Invocación.Uno de los atributos más destacables de Minato era su gran velocidad y sus reflejos aparentemente instantáneos. En comparación entre el Cuarto Raikage con Minato, éste último era capaz de reaccionar lo suficientemente rápido como para esquivar al Raikage usando la Armadura de Elemento Rayo. En su juventud, Jiraiya le enseñó a utilizar el Jutsu de Invocación para convocar a los sapos. Tenía las reservas de chakra suficientes para convocar a Gamabunta y fue la única persona en poder controlarlo de la mejor manera posible. Minato pasó tres años creando el Rasengan, se dice que pudo ser al observar la Bola Bestia con Cola. La técnica no necesita sellos con las manos, utilizando en su lugar una concentración de chakra, girando en forma de una esfera en la palma de la mano del usuario, que inflige un daño inmenso a su objetivo en contacto. Minato fue famoso por su técnica única de espacio-tiempo, el Jutsu Dios del Trueno Volador, que esencialmente le permitía movilizarse a cualquier lugar con el uso de sellos especiales, casi como si se teletransportan. El jutsu le valió el apodo del \"Destello Amarillo de Konoha\", debido a la velocidad imposible de igualar en la que se trasladaba al usar esta técnica. Minato era muy conocedor de fūinjutsu, en parte por Kushina, que le enseñó algunos de los sellos del clan Uzumaki. Conocía todas las capacidades del Sello Consumidor del Demonio de la Muerte, consciente de que no podría sellar por completo el chakra del Kyubi. Minato también podía eliminar la capacidad del oponente para utilizar la Técnica de Invocación. Durante su vida, Minato aprendió a utilizar el Senjutsu directamente del Monte Myōboku, enseñándole a recolectar la Energía Natural y concentrarla para mejorar sus técnicas. Demostrando poder entrar en el Modo Sabio reuniendo dicha energía en su cuerpo, adquiriendo un aumento en todas sus habilidades.', 11),
(36, 'Gaara', 'Es un shinobi de Sunagakure y el Quinto Kazekage, fue el Comandante General del ejército de la Gran Alianza Shinobi y Comandante de la Cuarta División. Formó parte del ex-equipo Baki. Es el hijo menor del Cuarto Kazekage, Rasa y Karura, hermano menor de Temari y Kankuro. Fue el tercer Jinchūriki de Shukaku. Gaara se ganó el apodo de Gaara de la Cascada de Arena. Gaara es el más joven de los hijos del Cuarto Kazekage, siendo Temari y Kankuro sus hermanos mayores. Cuando nació, la aldea cruzaba su peor momento, ya que él Tercer Kazekage, fue raptado por Sasori y, posteriormente, asesinado y convertido en una de sus marionetas. Sin el Kazekage, las otras aldeas ocultas y naciones vecinas, aprovechaban la ocasión para atacar a la aldea, haciendo la vida allí muy difícil. El recién elegido Cuarto Kazekage, ordenó a Chiyo, una de las ancianas de la Aldea de la Arena, que empleara una técnica de posesión para encerrar al bijū, Shukaku, en el vientre de su esposa, con la esperanza de que así su tercer hijo, Gaara, se transformara en una poderosa arma que bastara para proteger a la debilitada Aldea de la Arena de sus enemigos. Gaara ha sido un shinobi muy poderoso desde su aparición en la serie. Podía hacer temblar de miedo a quienes observaban su poder y, según Kankurō, él nunca había sido lastimado en ninguna de las misiones que había hecho, incluso en algunas de rango -A. En la segunda parte, demostró que era un shinobi muy capaz y confiable al ser nombrado como Kazekage y luego, en la Cuarta Guerra Ninja, donde fue nombrado como Comandante General de la Armada. Aún sin poseer a Shukaku en su interior, sigue siendo un shinobi muy fuerte e inteligente, cosa que demostró al vencer a shinobis de renombre, como el Cuarto Kazekage, el Segundo Mizukage y luego enfrentarse a Madara Uchiha en una batalla. Gaara posee la habilidad de manipular la arena, por lo general, se desplaza por el aire para servir a diversos fines. La cantidad de arena que puede controlar al mismo tiempo es bastante grande, como en la parte II, donde es capaz de reunir suficiente arena para cubrir Sunagakure con un escudo. Si se carece de arena en abundancia, Gaara puede romper los minerales de la tierra para crear más arena. Mientras que él puede controlar cualquier arena seca, la arena común requiere más chakra para manipularla, cansándolo a él a un ritmo rápido. Como resultado de ello, Gaara mantiene su propia arena mejorada con él en todo momento, en una calabaza, también hecha de la arena en su espalda. Debido a esta arena, ya está imbuida de su chakra, Gaara tiene un mejor control sobre ella, permitiendo realizar ataques más fuertes y más rápidos con ella.', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contraseña` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `contraseña`) VALUES
(1, 'admin@hokage.com', '$2y$12$DiauE5vOAbX1kuLYfv284eiwDanH2CG7zvmw/Sx5xjK.kq7iqfM4S');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clanes`
--
ALTER TABLE `clanes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personajes`
--
ALTER TABLE `personajes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_clan` (`id_clan`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clanes`
--
ALTER TABLE `clanes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `personajes`
--
ALTER TABLE `personajes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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

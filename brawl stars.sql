/*Brawl Stars*/
create database if not exists brawl_stars;

create table brawler (
id_brawler int not null auto_increment,
nombre_brawler varchar(45) not null,
descripcion text not null,
calidad varchar(45) not null,
especialidad varchar(45) not null,
salud int not null,
velocidad_movimiento varchar(45) not null,
primary key(id_brawler)
)engine innoDB;

create table habilidad_estelar (
id_habilidad int not null auto_increment,
nombre_habilidad varchar(45) not null,
id_brawler int not null,
primary key(id_habilidad),
foreign key(id_brawler) references brawler(id_brawler)
on delete restrict on update restrict
)engine innoDB;

create table gadget (
id_gadget int not null auto_increment,
nombre_gadget varchar(45) not null,
id_brawler int not null,
primary key(id_gadget),
foreign key(id_brawler) references brawler(id_brawler)
on delete restrict on update restrict
)engine innoDB;

create table ataque (
id_ataque int not null auto_increment,
nombre_ataque varchar(45) not null,
daño int not null,
alcance varchar(45) not null,
velocidad_recarga varchar(45) not null,
id_brawler int not null,
primary key(id_ataque),
foreign key(id_brawler) references brawler(id_brawler) 
on delete restrict on update restrict
)engine innoDB;

create table super (
id_super int not null auto_increment,
nombre_super varchar(45) not null,
daño int,
alcance varchar(45),
id_brawler int not null,
primary key(id_super),
foreign key(id_brawler) references brawler(id_brawler) 
on delete restrict on update restrict
)engine innoDB;

create table jugador (
id_jugador int not null auto_increment,
nombre_jugador varchar(45) not null,
copas int not null,
primary key(id_jugador)
)engine innoDB;

create table jugador_brawler (
id_jugador_brawler int not null auto_increment,
id_jugador int not null,
id_brawler int not null,
primary key(id_jugador_brawler),
foreign key(id_brawler) references brawler(id_brawler),
foreign key(id_jugador) references jugador(id_jugador)
)engine innoDB;

insert into brawler values(id_brawler, "Shelly", "Shelly es la tiradora perfecta: donde pone el ojo, pone la bala. No entiende por qué Colt es quien siempre se lleva las miradas...", "Brawler inicial", "Destructora", 7400, "Rápida");

insert into brawler values(id_brawler, "Nita", "¡Furiosa como una bestia, Nita nunca se retira de una pelea! El oso de peluche que lleva en la cabeza es un claro aviso para sus rivales: ni se os ocurra tocarlo.", "Especial", "Destructora", 8000, "Normal");

insert into brawler values(id_brawler, "Colt", "¡Colt es la atracción principal de Starr Park! Su carisma, sus trucos con la pistola y su sonrisa resplandeciente conquistan hasta al público más exigente. Excepto a Shelly, claro...", "Especial", "Destructora", 5600, "Normal");

insert into brawler values(id_brawler, "Bull", "Bull ya no es el toro salvaje de su juventud, pero lejos de estar oxidado, no dudará en demostrar que todavía es duro como el metal si alguien lo pone a prueba.", "Especial", "Tanque", 10000, "Rápido");

insert into brawler values(id_brawler, "Brock", "Brock es un entusiasta de los videojuegos y todo un guerrero del teclado. Aunque no lo parezca, es bastante introvertido, ¡pero hará lo que sea para ganar!", "Especial", "Tiro de élite", 4800, "Normal");

insert into brawler values(id_brawler, "El Primo", "El Primo es el centro de todas las miradas ¡y es que es el rey del cuadrilátero! Es experto en meterse al público en el bolsillo, aunque no le resulta tan fácil con sus compañeros...", "Especial", "Tanque", 12000, "Rápida");

insert into brawler values(id_brawler, "Barley", "Este barman robótico ha sido diseñado para preparar bebidas y charlar con la clientela. Barley también se dedica a mantener el bar limpio con una patena a toda costa, aunque tenga que patear el trasero de algún que otro cliente patoso.", "Especial", "Artillería", 4800, "Normal");

insert into brawler values(id_brawler, "Poco", "Poco emite ondas sonoras que dañan la sensibilidad de los enemigos. Su súper tiene un efecto sanador, tanto para sí mismo como para sus aliados. ", "Especial", "Apoyo", 7400, "Normal");

insert into brawler values(id_brawler, "Rosa", "Rosa se dedica a la botánica y siente una fuerte conexión con las plantas. También es boxeadora, ¡y no durará en dar un puñetazo a los especímenes que se pasen de la raya!", "Especial", "Tanque", 10000, "Rápida");

insert into brawler values(id_brawler, "Jessie", "Jessie es una niña prodigio capaz de construir armas y gadgets a partir de lo que se encuentra en la chatarrería. Quizá algún día su madre, Pam, se dé cuenta de lo que es capaz.", "Super especial", "Control", 6000, "Normal");

insert into brawler values(id_brawler, "Dynamike", "Dynamike es un viejo minero y explorador que siente auténtica pasión por los explosivos. Nada lo pone de mejor humor que oír un buen ¡BUM!", "Super especial", "Artillería", 5600, "Rápida");

insert into brawler values(id_brawler, "Tick", "Tick sigue a Penny allá donde va cual perrito faldero mientras ella planea su próximo gran golpe. Aparte de hacer saltar todo por los aires, no hay muchas cosas que se le den bien, ¡pero con eso basta y sobra!", "Super especial", "Artillería", 4400, "Normal");

insert into brawler values(id_brawler, "8-Bit", "8-BIT tiene la reputación de ser el juego más difícil de salón recreativo y odia a sus jugadores. Ahora que le falta una de sus armas, ¡le hierve la sangre más que nunca!", "Super especial", "Destructor", 10000, "Muy lenta");

insert into brawler values(id_brawler, "Rico", "Rico es un cazarrecompensas espacial que persigue a los criminales más peligrosos de la galaxia. ¿Cómo? No, no es una máquina de chicles con aire de grandeza...", "Super especial", "Destructor", 5600, "Normal");

insert into brawler values(id_brawler, "Darryl", "Darryl se puso el sombrero de capitán pirata para intentar escaquearse del trabajo, ¡pero ahora tiene que defender su barco! ¿Quién iba a decir que estar al mando conllevaría tanto esfuerzo?","Super especial", "Tanque", 10600, "Rápida");

insert into brawler values(id_brawler, "Penny", "Penny no está interesada en leer mapas o descifrar viejos acertijos de marineros. Ella es una pirata, ¡así que puede hacer explotar cosas y llevarse lo que quiera!", "Super especial", "Artillería", 6400, "Normal");

insert into brawler values(id_brawler, "Carl", "Carl lanza una piqueta como si fuera un bumerán y su súper hace girar su carrito minero, aplastando a todo el que se encuentre a su alrededor.", "Super especial", "Destructor", 8000, "Normal");

insert into brawler values(id_brawler, "Jacky", "A Jacky le encanta hacer temblar el suelo y a los rivales con su martillo mecánico. Su súper atrae a los enemigos más cercanos y los hace picadillo. ¡Ten cuidado por donde pisas! ", "Super especial", "Tanque", 10000, "Rápida");

insert into brawler values(id_brawler, "Gus", "Gus no es un niño fantasma, aunque lo confunden a menudo con uno. Simplemente da la casualidad de que siente fascinación por lo sobrenatural y los lugares encantados", "Super especial", "Apoyo", 6400, "Normal");

insert into brawler values(id_brawler, "Bo", "Bo lleva mucho tiempo sobreviviendo en la selva. Lo más impresionante de todo es que, para ello, utiliza juguetes que compró en rebajas en la tienda de souvenirs.", "Épico", "Control", 7200, "Normal");

insert into brawler values(id_brawler, "Emz", "En teoría, Emz trabaja en la funeraria de su tío Mortis, pero rara vez aparece por allí. Ser 'influencer' en redes sociales y promocionar su laca para el pelo ya es bastante trabajo. ", "Épico", "Control", 7200, "Normal");

insert into brawler values(id_brawler, "Stu", "A lo largo de su carrera como especialista en acrobacias, Stu se ha dado demasiados golpes y ha inhalado demasiados gases tóxicos, así que estos días le cuesta un poco mantenerse sobre la rueda", "Épico", "Asesino", 5800, "Normal");

insert into brawler values(id_brawler, "Piper", "Piper sueña con ser la pastelera local y preparar tartas, galletas y otras delicias dulces para todos... Eso sí, no le preguntes por su pasado.", "Épico", "Tiro de élite", 4600, "Normal");

insert into brawler values(id_brawler, "Pam", "Pam esta hasta arriba de trabajo en la chatarrería, ¡pero siempre es capaz de lidiar con todo! Aunque es una pena que no pueda pasar más tiempo con su hija, Jessie...", "Épico", "Apoyo", 9600, "Normal");

insert into brawler values(id_brawler, "Frank", "Frank es un grandullón con un corazón de oro que echa una mano en la funeraria de dia y trabaja como DJ en la discoteca de noche. No duerme demasiado y se nota.", "Épico", "Tanque", 14000, "Rápida");

insert into brawler values(id_brawler, "Bibi", "Si ves a Bibi acercarse con su bate, ten cuidado: es tan peligrosa como parece. También es un poco friki, pero eso lo mantiene en secreto ¡no puede manchar su reputación!", "Épico", "Tanque", 9600, "Muy rápida");

insert into brawler values(id_brawler, "Bea", "Bea se pasa el día observando insectos e imaginando qué dirían si ella pudiera entenderlos...O incluso cómo sería ser una de ellos.", "Épico", "Tiro de élite", 5000, "Normal");

insert into brawler values(id_brawler, "Nani", "Nani, una antigua cámara de seguridad, se encarga de echarle un ojo a Jessie, pero ser capaz de seguirle el ritmo es otro cantar. ¡Vaya con la niña!", "Épico", "Tiro de élite", 4800, "Normal");

insert into brawler values(id_brawler, "Edgar", "Edgar cree que nadie lo entiende. Su madre la que menos, pues se piensa que está pasando por una fase. Solo él sabe que la oscuridad que se aferra a su alma es para siempre.", "Épico", "Asesino", 6600, "Muy rápida");

insert into brawler values(id_brawler, "Griff", "Griff tiene la actitud de un empresario rico y de éxito, pero su único negocio es la tienda de souvenirs, que está en bancarrota. Qué curioso que nunca esté cuando llaman los del banco.", "Épico", "Control", 6800, "Normal");

insert into brawler values(id_brawler, "Grom", "La prioridad de este fornido centinela es vigilar. Grom arroja su walkie-talkie hacia sus rivales. Su súper es una bomba que rompe muros y hace retroceder a los enemigos.", "Épico", "Artillería", 5600, "Normal");

insert into brawler values(id_brawler, "Bonnie", "Bonnie está llena de energía incontrolable y destructiva, así que nunca para quieta. ¿Su sueño? Salir disparada de su cañón hasta alcanzar la luna.", "Épico", "Tiro de élite", 9600, "Lenta");

insert into brawler values(id_brawler, "Gale", "Gale es un incansable manitas que no puede parar quieto. Se deshace de los enemigos con una nevasca y su súper los empuja hacia atrás con una inmensa ventisca", "Épico", "Control", 7600, "Normal");

insert into brawler values(id_brawler, "Colette", "Colette cuenta en su colección con las figuras, peluches y juguetes de todos y cada uno de los brawlers ¿Está obsesionada? Si. ¿Ha perdido la cabeza? Sin duda.", "Épico", "Destructor", 6800, "Normal");

insert into brawler values(id_brawler, "Belle", "Belle es la líder de la infame banda del brazo de oro y sus ambiciones van más allá del dinero. Lo que ella realmente quiere es descubrir la verdad sobre Starr Park ¡y llevarlo a su ruina!", "Épico", "Tiro de élite", 5200, "Normal");

insert into brawler values(id_brawler, "Ash", "El sueño de Ash era ser actor, pero lejos de recibir aplausos, su ingrato trabajo consiste en limpiar el parque. Se ha metido en una papelera para protegerse de los cristales rotos y de las mordedoras de rata. Normal que esté de un humor de perros.", "Épico", "Tanque", 10800, "Normal");

insert into brawler values(id_brawler, "Lola", "Al entrar en una sala, Lola atrae todas las miradas. Es experta en montar una escena para conseguir lo que quiere ¡y se enorgullece mucho de ello!", "Épico", "Destructor", 7600, "Normal");

insert into brawler values(id_brawler, "Sam", "Sam Bronson trabajaba en la fábrica, y ahora quiere vengarse de todos los robots. Sam es el musculitos de La banda del brazo de oro. Siempre está dispuesto a patear robots y a embolsarse los botines.", "Épico", "Asesino", 10800, "Rápida");

insert into brawler values(id_brawler, "Mandy", "En su tienda de caramelos, Mandy reparte golosinas vestida con un disfraz digno de la princesa de un dulce reino. A veces el papel se le sube a la cabeza y reina sobre sus dominios con puño de hierro.", "Épico", "Tiro de élite", 5600, "Normal");

insert into brawler values(id_brawler, "Maisie", "Maisie trabaja como coordinadora de seguridad, pero en el fondo, le encanta el riesgo. De hecho, es experta en lidiar con las situaciones más peligrosas, aunque a veces parece ser ella quien las crea…", "Épico", "Tiro de élite", 7200, "Normal");

insert into brawler values(id_brawler, "Hank", "Hank es una gamba soldada que, subida a su tanque, tiene como misión liberar a toda criatura marina de las cocinas y mercados del mundo entero. Chefs, ¡quedáis avisados!", "Épico", "Tanque", 10800, "Normal");

insert into brawler values(id_brawler, "Pearl", "Pearl ha conseguido derretir los duros corazones de Belle y Sam gracias a su carácter cálido y encantador. Además, ¿quién puede resistirse a unas galletas de chocolate recién hechas?", "Épico", "Destructor", 7800, "Normal");

insert into brawler values(id_brawler, "Larry y Lawrie", "Larry vende las entradas para Starr Park bajo la atenta mirada de su gemelo Lawrie. Larry adora las reglas, ¡hacen que todo sea mas fácil! A Lawrie le gusta más asegurarse de que se cumplan. Forman un gran equipo", "Épico", "Artillería", 6000, "Rápida");

insert into brawler values(id_brawler, "Angelo", "Angelo es el Cupido en funciones del pantano del amor. Este mosquito revolotea por los canales en busca de tortolitos a los que deslumbrar con su encanto y a los que enseñar el significado de la palabra 'flechazo'.", "Épico", "Tiro de élite", 6000, "Muy rápida");

insert into brawler values(id_brawler, "Mortis", "Mortis avanza a palazos. Su súper consiste en invocar una bandada de murciélagos para queinflifan daño a los enemigos y así poder curarse a sí mismo.", "Mítico", "Asesino", 7600, "Muy rápida");

insert into brawler values(id_brawler, "Tara", "¡Las cartas le han dicho a Tara que se avecinan tiempos difíciles! Pero no te preocupes, porque cuenta con una fantástica selección de artículos mágicos que pueden ayudarte.", "Mítico", "Destructor", 6200, "Normal");

insert into brawler values(id_brawler, "Genio", "La gente ve a Genio y piensa que no es más que un tipo bajito disfrazado. Lo que no ve es que su personalidad está dividida en dos: una parte en su cuerpo y la otra en su tetera.", "Mítico", "Control", 7200, "Normal");

insert into brawler values(id_brawler, "Max", "Max se propulsa con su bebida energética y corre a toda velocidad a ayudar a quien lo necesite. Es cierto que siempre tiene tanta prisa que no le da tiempo a hacer mucho, ¡pero la intención es lo que cuenta!", "Mítico", "Apoyo", 6600, "Muy rápida");

insert into brawler values(id_brawler, "Señor P", "La gerencia del hotel lleva a Señor P de cabeza. No para de gritar a sus empleados para que trabajen más rápido, ¡pero esa no es forma de motivar al equipo!", "Mítico", "Control", 6800, "Normal");

insert into brawler values(id_brawler, "Sprout", "A primera vista, Sprout parece un robot de jardinería adorable que ayuda a Rosa en el biodomo, ¡pero su función principal es incubar una semilla rosa de lo más extraña!", "Mítico", "Artillería", 6000, "Normal");

insert into brawler values(id_brawler, "Byron", "Byron vende medicamentos extremadamente fuertes de eficacia probada. ¡Ni se te ocurra llamarle engañabobos!", "Mítico", "Apoyo", 4800, "Normal");

insert into brawler values(id_brawler, "Squeak", "Squeak es una criatura cargada de energia que adora a su creador, Ruffs. Es la alergia de huerta, aunque siempre deja todo perdido de babas", "Mítico", "Control", 7200, "Normal");

insert into brawler values(id_brawler, "Lou", "Lou es un robot vendedor de helados, aunque nunca haya vendido uno. Probablemente esto se deba a que vive en el pico de una montaña nevada.", "Mítico", "Control", 6400, "Normal");

insert into brawler values(id_brawler, "Ruffs", "Ruffs dispara un doble láser que rebota en los muros. Su súper son unos suministros aéreos que dañan a los rivales que se encuentren en la zona de entrega y depositan un potenciador para que lo utilice tu equipo. ", "Mítico", "Apoyo", 5600, "Normal");

insert into brawler values(id_brawler, "Buzz", "Buzz trabaja como socorrista en el parque acuático de los Velocirrápidos y es un maniático de las reglas, Le encanta poder ejercer la poca autoridad que tiene sobre los toboganes y piscinas.", "Mítico", "Asesino", 9600, "Rápida");

insert into brawler values(id_brawler, "Fang", "Fang ha visto tantas películas de kung-fu que prácticamente vive dentro de una. Es encantador, rebosa confianza en sí mismo ¡y nunca usa las manos si puede dar una buena patada!", "Mítico", "Asesino", 8600, "Rápida");

insert into brawler values(id_brawler, "Eve", "Eve solo tiene un propósito en la vida: cuidar y proteger a sus adorables bebés. Hará lo que haga falta para encontrarles un buen hogar..., preferiblemente entre el pelaje de Ruffs.", "Mítico", "Destructor", 5800, "Normal");

insert into brawler values(id_brawler, "Janet", "! Janet hará lo que sea para alcanzar el estrellato! además, sus habilidades interpretativas son muy útiles a la hora de rescatar a su hermana, Bonnie, cuando esta se mete en problemas", "Mítico", "Tiro de élite", 6400, "Normal");

insert into brawler values(id_brawler, "Otis", "Otis es un joven artista callejero en ciernes cuya técnica consiste en disparar tinta sobre los muros. Nadie conoce su verdadera identidad, ¡Lo que lo hace todavía más misterioso!", "Mítico", "Control", 6400, "Normal");

insert into brawler values(id_brawler, "Buster", "Buster se llevó un proyector del cien en el que trabaja para poder usarlo por ahi como arma y atrezo. No es nada profesional, pero el piensa que le queda genial.", "Mítico", "Tanque", 10400, "Rápida");

insert into brawler values(id_brawler, "Gray", "Gray se presenta como un personaje de una vieja película de cine mudo. Se lo toma muy en serio, aunque a veces se le olvida mantener la boca cerrada cuando dispara balas con los dedos.", "Mítico", "Apoyo", 6600, "Normal");

insert into brawler values(id_brawler, "R-T", "La función principal de R-T es ser un puesto de información, pero también es el encargado de controlar toda la actividad que se lleve a cabo en Starr Park. Por razones de seguridad, claro está.", "Mítico", "Destructor", 7800, "Normal");

insert into brawler values(id_brawler, "Willow", "Willow Trabaja como gondolera en el pantano del amor, donde se asegura de que las parejas de enamorados pasen la velada más espeluznante de sus vidas.", "Mítico", "Control", 5600, "Normal");

insert into brawler values(id_brawler, "Doug", "Los perritos calientes de Doug alargan el tiempo de vida de tus amigos.", "Mítico", "Apoyo", 1000, "Rápida");

insert into brawler values(id_brawler, "Chuck", "En el pasado fue un maestro brillante, Pero Chuck, el maquinista, cambio las sinfonías de los auditorios por las cacofonías de la estación fantasma con la esperanza de descubrir el sonido que revolucionara el mundo de la música", "Mítico", "Destructor", 9000, "Rápida");

insert into brawler values(id_brawler, "Charlie", "Nuestra amiga y vecina Charlie al público del circo tiene impresionado. Con sus dotes tejedoras de auténtica artista esta arácnida es la reina de la pista, pero el espectáculo llego a su fin, ¡cuidado! ¡Es hora de desvalijar el gentío embelsado!", "Mítico", "Control", 6600, "Normal");

insert into brawler values(id_brawler, "Mico", "Con todas esas anécdotas sobre famosos, lo normal es pensar que Mico es una estrella del espectáculo, pero en realidad es el técnico de Sonido de Brawlywood. Irascible, impredecible y sin sentido del humor: hagas lo que hagas, nunca te rías delante de él.", "Mítico", "Asesino", 6000, "Muy rápida");

insert into brawler values(id_brawler, "Melodie", "Cuando se trata del karaoke, Melodie no tiene piedad. Gracias a su apariencia de estrella del pop y a unas cuerdas vocales monstruosas, esta brawler nunca pasa desapercibida.", "Mítico", "Asesino", 8200, "Normal");

insert into brawler values(id_brawler, "Lily", "El ansia de conocimiento de Lily, una atuéntica aficionada a la brujería, la llevó al bosque Encantado, donde un incidente con una luciérnaga y una planta carnivora cambiaria su vida para siempre...", "Mítico", "Asesino", 8400, "Muy rápida");

insert into brawler values(id_brawler, "Spike", "Aunque la gente piensa que Spike es el compañero adorable de Colt y Shelly en el rancho, nadie puede imaginar cuán traumático es su espinoso pasado...", "Legendario", "Destructor", 4800, "Normal");

insert into brawler values(id_brawler, "Crow", "Crow no confía en nadie y está rodeado de un aura de misterio. Lo único que se sabe de él es que frecuenta la cafetería con Bull y Bibi.", "Legendario", "Asesino", 4800, "Muy rápida");

insert into brawler values(id_brawler, "Leon", "Leon es más bien un lobo solitario, así que su habilidad de volverse invisible le va al pelo. Su hermana, Nita, es la única con la que se muestra tal y como es.", "Legendario", "Asesino", 6800, "Muy rápida");

insert into brawler values(id_brawler, "Sandy", "En las contadas ocasiones en que Sandy despierta de su profundo sueño, suele ayudar a su hermana Tara en la tienda. Aunque no aguanta mucho tiempo en pie...", "Legendario", "Control", 7600, "Rápida");

insert into brawler values(id_brawler, "Amber", "¡Esto está que arde! Amber siente plena confianza en su habilidad para controlar el fuego, pero es un poco torpe. ¿Su lema? 'Aunque me queme el pelo, ¡el espectáculo es lo primero!'", "Legendario", "Control", 6400, "Normal");

insert into brawler values(id_brawler, "Meg", "Meg enfundada en su traje meca, se encarga entre bambalinas de solucionar los problemas de verdad mientras Max y Surge se dedican a entretener al público.", "Legendario", "Tanque", 4600, "Rápido");

insert into brawler values(id_brawler, "Surge", "Surge, además de expender bebidas, ¡también es el alma de la fiesta! Es todo un máquina en la pista de baile ¡y su música carga al público de energía!", "Legendario", "Destructor", 6600, "Lenta");

insert into brawler values(id_brawler, "Chester", "Chester se burlará de quien sea hasta sacarlo de sus casillas, ¡y cuanto más, mejor! Y si ese alguien es Mandy, ¡no parará hasta hacerla rabiar!", "Legendario", "Destructor", 7400, "Rápida");

insert into brawler values(id_brawler, "Cordelius", "Cordelius el jardinero y guardián del bosque encantado. Le chiflan los champiñones y es hostil con los desconocidos.", "Legendario", "Asesino", 6400, "Muy rápido");

insert into brawler values(id_brawler, "Kit", "Cansado de firmar autógrafos en los Estudios Starr de Animación, Kit sueña con volver a ser alguien en la industria. Alguien reconocido por su talento más que por su apariencia...", "Legendario", "Apoyo", 6000, "Muy rápida");

insert into brawler values(id_brawler, "Draco", "A lomos de su dragón inflable y rodeado de fuegos artificiales, Draco promete un espectáculo apoteósico cada noche. Anima al público con su estridente guitarra eléctrica y su montura escupefuego ¡La fantasia está servida!", "Legendario", "Tanque", 11000, "Normal");

insert into habilidad_estelar values(id_habilidad, "Choque Mate", 1);
insert into habilidad_estelar values(id_habilidad, "Primeros Auxilios", 1);
insert into habilidad_estelar values(id_habilidad, "Hermano Oso", 2);
insert into habilidad_estelar values(id_habilidad, "Zarpazo Veloz", 2);
insert into habilidad_estelar values(id_habilidad, "Botas Veloces", 3);
insert into habilidad_estelar values(id_habilidad, "Pistoletazo", 3);
insert into habilidad_estelar values(id_habilidad, "Toro Furioso", 4);
insert into habilidad_estelar values(id_habilidad, "Tipo Duro", 4);
insert into habilidad_estelar values(id_habilidad, "Más Cohetes", 5);
insert into habilidad_estelar values(id_habilidad, "Cuarto Cohete", 5);
insert into habilidad_estelar values(id_habilidad, "El fuego", 6);
insert into habilidad_estelar values(id_habilidad, "Deprisa y Corriendo", 6);
insert into habilidad_estelar values(id_habilidad, "Licor Curativo", 7);
insert into habilidad_estelar values(id_habilidad, "Licor Extranocivo", 7);
insert into habilidad_estelar values(id_habilidad, "Musicoterapia", 8);
insert into habilidad_estelar values(id_habilidad, "Sin Playback", 8);
insert into habilidad_estelar values(id_habilidad, "Naturaleza Viva", 9);
insert into habilidad_estelar values(id_habilidad, "Guantes Punzantes", 9);
insert into habilidad_estelar values(id_habilidad, "Energizante", 10);
insert into habilidad_estelar values(id_habilidad, "Rebote Electrizante", 10);
insert into habilidad_estelar values(id_habilidad, "Dinasalto", 11);
insert into habilidad_estelar values(id_habilidad, "Demolición", 11);
insert into habilidad_estelar values(id_habilidad, "Autorreparación", 12);
insert into habilidad_estelar values(id_habilidad, "Tic, Tac, Tic, Tac", 12);
insert into habilidad_estelar values(id_habilidad, "Amplificadaño Potenciado", 13);
insert into habilidad_estelar values(id_habilidad, "Enchufado", 13);
insert into habilidad_estelar values(id_habilidad, "Super Rebote", 14);
insert into habilidad_estelar values(id_habilidad, "Retirada Robótica", 14);
insert into habilidad_estelar values(id_habilidad, "Aros de Acero", 15);
insert into habilidad_estelar values(id_habilidad, "Recarga Rodadora", 15);
insert into habilidad_estelar values(id_habilidad, "Arcas Llenas", 16);
insert into habilidad_estelar values(id_habilidad, "Tiroteo Maestro", 16);
insert into habilidad_estelar values(id_habilidad, "Lanzamiento Veloz", 17);
insert into habilidad_estelar values(id_habilidad, "Pirueta Protectora", 17);
insert into habilidad_estelar values(id_habilidad, "No hay de qué", 18);
insert into habilidad_estelar values(id_habilidad, "Casco Blindado", 18);
insert into habilidad_estelar values(id_habilidad, "Salud Abundante", 19);
insert into habilidad_estelar values(id_habilidad, "Guía Espiritual", 19);
insert into habilidad_estelar values(id_habilidad, "Ojo de Águila", 20);
insert into habilidad_estelar values(id_habilidad, "Cepos", 20);
insert into habilidad_estelar values(id_habilidad, "Karma", 21);
insert into habilidad_estelar values(id_habilidad, "Autobombo", 21);
insert into habilidad_estelar values(id_habilidad, "Sin frenos", 22);
insert into habilidad_estelar values(id_habilidad, "Chute de Adrenalina", 22);
insert into habilidad_estelar values(id_habilidad, "Emboscada", 23);
insert into habilidad_estelar values(id_habilidad, "Ataca y Vencerás", 23);
insert into habilidad_estelar values(id_habilidad, "Zona de Confort", 24);
insert into habilidad_estelar values(id_habilidad, "Curación Destructiva", 24);
insert into habilidad_estelar values(id_habilidad, "Toma de Fuerza", 25);
insert into habilidad_estelar values(id_habilidad, "Esponja", 25);
insert into habilidad_estelar values(id_habilidad, "Corredora", 26);
insert into habilidad_estelar values(id_habilidad, "A la defensiva", 26);
insert into habilidad_estelar values(id_habilidad, "Abeja Reina", 27);
insert into habilidad_estelar values(id_habilidad, "Panal", 27);
insert into habilidad_estelar values(id_habilidad, "Foco Automático", 28);
insert into habilidad_estelar values(id_habilidad, "Acero Templado", 28);
insert into habilidad_estelar values(id_habilidad, "Aterrizaje Forzoso", 29);
insert into habilidad_estelar values(id_habilidad, "A puñetazo limpio", 29);
insert into habilidad_estelar values(id_habilidad, "Quédate con el cambio", 30);
insert into habilidad_estelar values(id_habilidad, "Resistencia Empresarial", 30);
insert into habilidad_estelar values(id_habilidad, "Ronda de Vigilacia", 31);
insert into habilidad_estelar values(id_habilidad, "Factor X", 31);
insert into habilidad_estelar values(id_habilidad, "Pólvora", 32);
insert into habilidad_estelar values(id_habilidad, "Muela del Juicio", 32);
insert into habilidad_estelar values(id_habilidad, "Golpe Tempestuoso", 33);
insert into habilidad_estelar values(id_habilidad, "Nieve Glacial", 33);
insert into habilidad_estelar values(id_habilidad, "Empujón", 34);
insert into habilidad_estelar values(id_habilidad, "Impuestos a Tutiplén", 34);
insert into habilidad_estelar values(id_habilidad, "Retroefecto Positivo", 35);
insert into habilidad_estelar values(id_habilidad, "Castigado", 35);
insert into habilidad_estelar values(id_habilidad, "Primer Escobazo", 36);
insert into habilidad_estelar values(id_habilidad, "Fuera de Sí", 36);
insert into habilidad_estelar values(id_habilidad, "Improvisación", 37);
insert into habilidad_estelar values(id_habilidad, "Legión de Fans", 37);
insert into habilidad_estelar values(id_habilidad, "Se cura hoy y no mañana", 38);
insert into habilidad_estelar values(id_habilidad, "Recarga Remota", 38);
insert into habilidad_estelar values(id_habilidad, "A la vista", 39);
insert into habilidad_estelar values(id_habilidad, "Caramelo Resistente", 39);
insert into habilidad_estelar values(id_habilidad, "Presición Precisa", 40);
insert into habilidad_estelar values(id_habilidad, "Temblores", 40);
insert into habilidad_estelar values(id_habilidad, "Va a explotar", 41);
insert into habilidad_estelar values(id_habilidad, "¡A Cubierto!", 41);
insert into habilidad_estelar values(id_habilidad, "Conservación del calor", 42);
insert into habilidad_estelar values(id_habilidad, "Escudo de Calor", 42);
insert into habilidad_estelar values(id_habilidad, "Protocolo: Protección", 43);
insert into habilidad_estelar values(id_habilidad, "Protocolo: Ayuda", 43);
insert into habilidad_estelar values(id_habilidad, "Antídoto Natural", 44);
insert into habilidad_estelar values(id_habilidad, "Hidroflujo", 44);
insert into habilidad_estelar values(id_habilidad, "Recolector de Almas", 45);
insert into habilidad_estelar values(id_habilidad, "Ataque Inesperado", 45);
insert into habilidad_estelar values(id_habilidad, "Portal Oscuro", 46);
insert into habilidad_estelar values(id_habilidad, "Sombra Curativa", 46);
insert into habilidad_estelar values(id_habilidad, "Curación Mágica", 47);
insert into habilidad_estelar values(id_habilidad, "Espíritu Enfadado", 47);
insert into habilidad_estelar values(id_habilidad, "Súper Cargado", 48);
insert into habilidad_estelar values(id_habilidad, "¡Corre y Vuela!", 48);
insert into habilidad_estelar values(id_habilidad, "Exceso de Equipaje", 49);
insert into habilidad_estelar values(id_habilidad, "Puerta Giratoria", 49);
insert into habilidad_estelar values(id_habilidad, "Sobrecrecimiento", 50);
insert into habilidad_estelar values(id_habilidad, "Fotosíntesis", 50);
insert into habilidad_estelar values(id_habilidad, "Malestar", 51);
insert into habilidad_estelar values(id_habilidad, "Inyección", 51);
insert into habilidad_estelar values(id_habilidad, "Reacción en Cadena", 52);
insert into habilidad_estelar values(id_habilidad, "Superviscosas", 52);
insert into habilidad_estelar values(id_habilidad, "Corazón Congelado", 53);
insert into habilidad_estelar values(id_habilidad, "Hipotermia", 53);
insert into habilidad_estelar values(id_habilidad, "Superioridad Aérea", 54);
insert into habilidad_estelar values(id_habilidad, "Ascenso", 54);
insert into habilidad_estelar values(id_habilidad, "Boya Reforzada", 55);
insert into habilidad_estelar values(id_habilidad, "Ojo Avizor", 55);
insert into habilidad_estelar values(id_habilidad, "Puntapiés Furiosos", 56);
insert into habilidad_estelar values(id_habilidad, "Suelas divinas", 56);
insert into habilidad_estelar values(id_habilidad, "Desorden Natural", 57);
insert into habilidad_estelar values(id_habilidad, "Sorpresita", 57);
insert into habilidad_estelar values(id_habilidad, "Arriba el Telón", 58);
insert into habilidad_estelar values(id_habilidad, "Calentamiento Vocal", 58);
insert into habilidad_estelar values(id_habilidad, "Pegamento", 59);
insert into habilidad_estelar values(id_habilidad, "Relleno de Tinta", 59);
insert into habilidad_estelar values(id_habilidad, "Taquillazo", 60);
insert into habilidad_estelar values(id_habilidad, "Chaleco Protector", 60);
insert into habilidad_estelar values(id_habilidad, "Herida Falsa", 61);
insert into habilidad_estelar values(id_habilidad, "Nueva Perspectiva", 61);
insert into habilidad_estelar values(id_habilidad, "Álgebra",62);
insert into habilidad_estelar values(id_habilidad, "Grabación", 62);
insert into habilidad_estelar values(id_habilidad, "Amor ciego", 63);
insert into habilidad_estelar values(id_habilidad, "Obsesión", 63);
insert into habilidad_estelar values(id_habilidad, "Comida Rápida", 64);
insert into habilidad_estelar values(id_habilidad, "Autoservicio", 64);
insert into habilidad_estelar values(id_habilidad, "Próxima parada", 65);
insert into habilidad_estelar values(id_habilidad, "El Billete, por favor", 65);
insert into habilidad_estelar values(id_habilidad, "Digestión", 66);
insert into habilidad_estelar values(id_habilidad, "Atrapapiés", 66);
insert into habilidad_estelar values(id_habilidad, "Asuntos de Primates", 67);
insert into habilidad_estelar values(id_habilidad, "Disco de platino", 67);
insert into habilidad_estelar values(id_habilidad, "Crescendo", 68);
insert into habilidad_estelar values(id_habilidad, "Bis", 68);
insert into habilidad_estelar values(id_habilidad, "Espina Venenosa", 69);
insert into habilidad_estelar values(id_habilidad, "Vigilancia", 69);
insert into habilidad_estelar values(id_habilidad, "Fertilizante", 70);
insert into habilidad_estelar values(id_habilidad, "Curvatura", 70);
insert into habilidad_estelar values(id_habilidad, "Extratóxico", 71);
insert into habilidad_estelar values(id_habilidad, "Cría Cuervos", 71);
insert into habilidad_estelar values(id_habilidad, "Humadera", 72);
insert into habilidad_estelar values(id_habilidad, "Cura Invisible", 72);
insert into habilidad_estelar values(id_habilidad, "Arena Sepultadora", 73);
insert into habilidad_estelar values(id_habilidad, "Minerales Curativos", 73);
insert into habilidad_estelar values(id_habilidad, "Llamas Incendarias", 74);
insert into habilidad_estelar values(id_habilidad, "Absorción Ígnea", 74);
insert into habilidad_estelar values(id_habilidad, "Campo de Fuerza", 75);
insert into habilidad_estelar values(id_habilidad, "Autodestrucción", 75);
insert into habilidad_estelar values(id_habilidad, "Maxiboom", 76);
insert into habilidad_estelar values(id_habilidad, "Ataque Refrescante", 76);
insert into habilidad_estelar values(id_habilidad, "Lluvia de Cascabeles", 77);
insert into habilidad_estelar values(id_habilidad, "Veo Veo", 77);
insert into habilidad_estelar values(id_habilidad, "Champicombos", 78);
insert into habilidad_estelar values(id_habilidad, "Reino de los Champiñones", 78);
insert into habilidad_estelar values(id_habilidad, "Sed de Poder", 79);
insert into habilidad_estelar values(id_habilidad, "Apego Excesivo", 79);
insert into habilidad_estelar values(id_habilidad, "Exponer", 80);
insert into habilidad_estelar values(id_habilidad, "Triturar", 80);



insert into gadget values(id_gadget, "Paso al Frente", 1);
insert into gadget values(id_gadget, "Tiro al plato", 1);
insert into gadget values(id_gadget, "Garras de Oso", 2);
insert into gadget values(id_gadget, "Piel Protectora", 2);
insert into gadget values(id_gadget, "Recarga Rápida", 3);
insert into gadget values(id_gadget, "Bala de Plata", 3);
insert into gadget values(id_gadget, "Vigorizador", 4);
insert into gadget values(id_gadget, "Pisoteador", 4);
insert into gadget values(id_gadget, "Zapatillas Explosivas", 5);
insert into gadget values(id_gadget, "Megacohete", 5);
insert into gadget values(id_gadget, "Vuelta de Tuerca", 6);
insert into gadget values(id_gadget, "Cinturón de Asteroides", 6);
insert into gadget values(id_gadget, "Mejunje Pegajoso", 7);
insert into gadget values(id_gadget, "Tónito de Hierbas", 7);
insert into gadget values(id_gadget, "Diapasón", 8);
insert into gadget values(id_gadget, "Canción Protectora", 8);
insert into gadget values(id_gadget, "Arbustos Robustos", 9);
insert into gadget values(id_gadget, "Ortigas", 9);
insert into gadget values(id_gadget, "Bujía", 10);
insert into gadget values(id_gadget, "Intensificador", 10);
insert into gadget values(id_gadget, "Giros Explosivos", 11);
insert into gadget values(id_gadget, "Pólvora Aturdidora", 11);
insert into gadget values(id_gadget, "Derroche de Minas", 12);
insert into gadget values(id_gadget, "Últimas Palabras", 12);
insert into gadget values(id_gadget, "Cartucho Teletransportador", 13);
insert into gadget values(id_gadget, "Puntos Extra", 13);
insert into gadget values(id_gadget, "Parque de Bolas", 14);
insert into gadget values(id_gadget, "Castillo Hinchable", 14);
insert into gadget values(id_gadget, "Disparos 360", 15);
insert into gadget values(id_gadget, "Barril de Alquitrán", 15);
insert into gadget values(id_gadget, "Barril de Sal", 16);
insert into gadget values(id_gadget, "Catalejo de Confianza", 16);
insert into gadget values(id_gadget, "Rocas Volcánicas", 17);
insert into gadget values(id_gadget, "Gancho Remolcador", 17);
insert into gadget values(id_gadget, "Subidón Neumático", 18);
insert into gadget values(id_gadget, "Reconstrucción", 18);
insert into gadget values(id_gadget, "Explosión Espiritual", 19);
insert into gadget values(id_gadget, "Cambio de Alma", 19);
insert into gadget values(id_gadget, "Supertótem", 20);
insert into gadget values(id_gadget, "Cuerda Detonante", 20);
insert into gadget values(id_gadget, "Espacio personal", 21);
insert into gadget values(id_gadget, "Laca Letal", 21);
insert into gadget values(id_gadget, "A toda Mecha", 22);
insert into gadget values(id_gadget, "Demolición", 22);
insert into gadget values(id_gadget, "Autodisparo", 23);
insert into gadget values(id_gadget, "Truco Secreto", 23);
insert into gadget values(id_gadget, "Modulador Sísmico", 24);
insert into gadget values(id_gadget, "Absorbechatarra", 24);
insert into gadget values(id_gadget, "Cancelación de Ruido", 25);
insert into gadget values(id_gadget, "Atracción Irresistible", 25);
insert into gadget values(id_gadget, "Suplemento Vitamínico", 26);
insert into gadget values(id_gadget, "Extrapegajoso", 26);
insert into gadget values(id_gadget, "Mieles Finales", 27);
insert into gadget values(id_gadget, "Colmena Agitada", 27);
insert into gadget values(id_gadget, "Estallido Teletransportador", 28);
insert into gadget values(id_gadget, "Devolución al Remitente", 28);
insert into gadget values(id_gadget, "Por los Aires", 29);
insert into gadget values(id_gadget, "Coraza", 29);
insert into gadget values(id_gadget, "Hucha", 30);
insert into gadget values(id_gadget, "Lluvia de Monedas", 30);
insert into gadget values(id_gadget, "Torre de Vigilancia", 31);
insert into gadget values(id_gadget, "Radiodifusión", 31);
insert into gadget values(id_gadget, "Subidón de Azúcar", 32);
insert into gadget values(id_gadget, "Prueba de Choque", 32);
insert into gadget values(id_gadget, "Propulsador Aéreo", 33);
insert into gadget values(id_gadget, "Tornado", 33);
insert into gadget values(id_gadget, "Liquidación Parcial", 34);
insert into gadget values(id_gadget, "Disparo Curativo", 34);
insert into gadget values(id_gadget, "Prevención Explosiva", 35);
insert into gadget values(id_gadget, "Polaridad Invertida", 35);
insert into gadget values(id_gadget, "Tranquilizante", 36);
insert into gadget values(id_gadget, "Plátano Podrido", 36);
insert into gadget values(id_gadget, "Pose Glamurosa", 37);
insert into gadget values(id_gadget, "Doble de Riesgo", 37);
insert into gadget values(id_gadget, "Campo Magnético", 38);
insert into gadget values(id_gadget, "Pulso Repelente", 38);
insert into gadget values(id_gadget, "Caramelización", 39);
insert into gadget values(id_gadget, "Migas de Galletas", 39);
insert into gadget values(id_gadget, "Suéltame", 40);
insert into gadget values(id_gadget, "Acaba con Ellos", 40);
insert into gadget values(id_gadget, "Globos de Agua", 41);
insert into gadget values(id_gadget, "Barricada", 41);
insert into gadget values(id_gadget, "Chamuscadas", 42);
insert into gadget values(id_gadget, "Hechas con Amor", 42);
insert into gadget values(id_gadget, "Orden:Cambio", 43);
insert into gadget values(id_gadget, "Orden:Retirada", 43);
insert into gadget values(id_gadget, "Aguijón Vampírico", 44);
insert into gadget values(id_gadget, "Flecha Robusta", 44);
insert into gadget values(id_gadget, "Pala Rotativa", 45);
insert into gadget values(id_gadget, "Pala de Supervivencia", 45);
insert into gadget values(id_gadget, "Ojo que todo lo ve", 46);
insert into gadget values(id_gadget, "Refuerzos del más alla", 46);
insert into gadget values(id_gadget, "Aléjate Sésamo", 47);
insert into gadget values(id_gadget, "Espíritus Vengativos", 47);
insert into gadget values(id_gadget, "Empuje Poderoso", 48);
insert into gadget values(id_gadget, "Zapatillas Mágicas", 48);
insert into gadget values(id_gadget, "Campana de Servicio", 49);
insert into gadget values(id_gadget, "Botonas de Refuerzo", 49);
insert into gadget values(id_gadget, "Abono Vegetal", 50);
insert into gadget values(id_gadget, "Transplante", 50);
insert into gadget values(id_gadget, "Automedicación", 51);
insert into gadget values(id_gadget, "Inyecciones de Refuerzo", 51);
insert into gadget values(id_gadget, "Pegajosidad", 52);
insert into gadget values(id_gadget, "Residuo", 52);
insert into gadget values(id_gadget, "Bloque de Hielo", 53);
insert into gadget values(id_gadget, "Líquido Criogénico", 53);
insert into gadget values(id_gadget, "A Cubierto", 54);
insert into gadget values(id_gadget, "Apoyo Aéreo", 54);
insert into gadget values(id_gadget, "Salvavidas de Repuesto", 55);
insert into gadget values(id_gadget, "Gafas de Rayos X", 55);
insert into gadget values(id_gadget, "Lluvia de Maíz", 56);
insert into gadget values(id_gadget, "Patada Circular", 56);
insert into gadget values(id_gadget, "Chao, Pescao", 57);
insert into gadget values(id_gadget, "Amor Materno", 57);
insert into gadget values(id_gadget, "Altavoz", 58);
insert into gadget values(id_gadget, "Entre Bambalinas", 58);
insert into gadget values(id_gadget, "Estrella Durmiente", 59);
insert into gadget values(id_gadget, "Salpicaduras", 59);
insert into gadget values(id_gadget, "Cinturón de Herramientas", 60);
insert into gadget values(id_gadget, "A Cámara Lenta", 60);
insert into gadget values(id_gadget, "Bastón", 61);
insert into gadget values(id_gadget, "Piano de Cola", 61);
insert into gadget values(id_gadget, "Sin Cobertura", 62);
insert into gadget values(id_gadget, "Cuenta Atrás", 62);
insert into gadget values(id_gadget, "Farol Embrujado", 63);
insert into gadget values(id_gadget, "Buceo", 63);
insert into gadget values(id_gadget, "Salchicha Doble", 64);
insert into gadget values(id_gadget, "Extra de Mostaza", 64);
insert into gadget values(id_gadget, "Desvío", 65);
insert into gadget values(id_gadget, "Tren Fantasmal", 65);
insert into gadget values(id_gadget, "Arañas", 66);
insert into gadget values(id_gadget, "Espacio Personal", 66);
insert into gadget values(id_gadget, "Rompetímpanos", 67);
insert into gadget values(id_gadget, "Presto", 67);
insert into gadget values(id_gadget, "Entonación Perfecta", 68);
insert into gadget values(id_gadget, "Interludio", 68);
insert into gadget values(id_gadget, "Desaparición", 69);
insert into gadget values(id_gadget, "Trasplante", 69);
insert into gadget values(id_gadget, "Lluvia de Espinas", 70);
insert into gadget values(id_gadget, "Vida Vegetal", 70);
insert into gadget values(id_gadget, "Plumaje Protector", 71);
insert into gadget values(id_gadget, "Toxina Ralentizante", 71);
insert into gadget values(id_gadget, "Proyector Clonador", 72);
insert into gadget values(id_gadget, "Piruleta Furtiva", 72);
insert into gadget values(id_gadget, "Pastillas para Dormir", 73);
insert into gadget values(id_gadget, "Dulces Sueños", 73);
insert into gadget values(id_gadget, "Ignición", 74);
insert into gadget values(id_gadget, "Danza de Llamas", 74);
insert into gadget values(id_gadget, "Descarga Eléctrica", 75);
insert into gadget values(id_gadget, "Caja de Herramientas", 75);
insert into gadget values(id_gadget, "Hiperactividad", 76);
insert into gadget values(id_gadget, "Escudo de Fuerza", 76);
insert into gadget values(id_gadget, "Dado Trucado", 77);
insert into gadget values(id_gadget, "Grageas", 77);
insert into gadget values(id_gadget, "Replantar", 78);
insert into gadget values(id_gadget, "Champiñón Venenoso", 78);
insert into gadget values(id_gadget, "Caja de Cartón", 79);
insert into gadget values(id_gadget, "Hamburguesa con Queso", 79);
insert into gadget values(id_gadget, "Gancho", 80);
insert into gadget values(id_gadget, "El Último Bastión", 80);
insert into super values(id_super, "Superbalas", 5760, "Largo", 1);
insert into super values(id_super, "Abrazo del Oso", 800, "Corto", 2);
insert into super values(id_super, "Tormenta de Balas", 7680, "Muy Largo", 3);
insert into super values(id_super, "Embestida", 1920, "Muy Largo", 4);
insert into super values(id_super, "Lluvia Explosiva", 18720, "Largo", 5);
insert into super values(id_super, "Codo Intergaláctico", 1920, "Largo", 6);
insert into super values(id_super, "Cortesía de la Casa", 8000, "Muy Largo", 7);
insert into super values(id_super, "Popurrí Sanador", 4200, "Muy Largo", 8);
insert into super values(id_super, "Dura e Podar", 0, "Ninguno", 9);
insert into super values(id_super, "Chatarrera", 520, "Largo", 10);
insert into super values(id_super, "Barril Explosivo", 4400, "Largo", 11);
insert into super values(id_super, "Cabezazo", 4000, "Corto", 12);
insert into super values(id_super, "Amplificadaño", 0, "Ninguno", 13);
insert into super values(id_super, "Disparo Experto", 8640, "Muy Largo", 14);
insert into super values(id_super, "Tonel Loco", 800, "Largo", 15);
insert into super values(id_super, "Cañonazo", 2400, "Muy Largo", 16);
insert into super values(id_super, "Carro Descarrilado", 1000, "Corto", 17);
insert into super values(id_super, "Atracción Martilleante", 0, "Ninguno", 18);
insert into super values(id_super, "Sabueso Tenebroso", 0, "Muy Largo", 19);
insert into super values(id_super, "Trampantojo", 8640, "Largo", 20);
insert into super values(id_super, "Carisma Corrosivo", 480, "Ninguno", 21);
insert into super values(id_super, "Nitroacelerador", 1600, "Corto", 22);
insert into super values(id_super, "Salto Explosivo", 7200, "Largo", 23);
insert into super values(id_super, "Beso Materno", 0, "Ninguno", 24);
insert into super values(id_super, "Terapia de Choque", 2480, "Largo", 25);
insert into super values(id_super, "Masca y Machaca", 1800, "Muy Largo", 26);
insert into super values(id_super, "Enjambre Robótico", 1400, "Largo", 27);
insert into super values(id_super, "Control Remoto", 3600, "Corto", 28);
insert into super values(id_super, "Saltimbanqui", 0, "Normal", 29);
insert into super values(id_super, "Dinero de Vuelta", 6600, "Largo", 30);
insert into super values(id_super, "Gromba", 3200, "Largo", 31);
insert into super values(id_super, "Mujer Bala", 2000, "Largo", 32);
insert into super values(id_super, "Vendaval", 1000, "Muy Largo", 33);
insert into super values(id_super, "Hora de Cobrar", 1000, "Muy Largo", 34);
insert into super values(id_super, "Avistamiento", 1000, "Muy Largo", 35);
insert into super values(id_super, "Roedores Colaboradores", 600, "Normal", 36);
insert into super values(id_super, "Megalomanía", 0, "Normal", 37);
insert into super values(id_super, "Revientanudillos", 2800, "Largo", 38);
insert into super values(id_super, "Rayo Azucarado", 5000, "Muy Largo", 39);
insert into super values(id_super, "Onda Expansiva", 2480, "Corto", 40);
insert into super values(id_super, "Banco de Torpedos", 15840, "Ninguno", 41);
insert into super values(id_super, "Explosión de Vapor", 3100, "Ninguno", 42);
insert into super values(id_super, "Refuerzos", 900, "Normal", 43);
insert into super values(id_super, "Pantano Ponzoñoso", 1000, "Ninguno", 44);
insert into super values(id_super, "Transfusión", 1800, "Muy Largo", 45);
insert into super values(id_super, "Gravedad", 1600, "Normal", 46);
insert into super values(id_super, "Mano Mágica", 0, "Largo", 47);
insert into super values(id_super, "Como las Balas", 0, "Ninguno", 48);
insert into super values(id_super, "¡Botones al Ataque!", 520, "Ninguno", 49);
insert into super values(id_super, "Barrera Vegetal", 0, "Largo", 50);
insert into super values(id_super, "Tratamiento Completo", 3000, "Largo", 51);
insert into super values(id_super, "Pegotón", 2000, "Largo", 52);
insert into super values(id_super, "Dando la Lata", 80, "Largo", 53);
insert into super values(id_super, "Suministros Aéreos", 0, "Largo", 54);
insert into super values(id_super, "Lanzamiento de Boya", 0, "Muy Largo", 55);
insert into super values(id_super, "Patadas en Cadena", 2400, "Muy Largo", 56);
insert into super values(id_super, "Retoños", 1600, "Ninguno", 57);
insert into super values(id_super, "Crescendo", 11200, "Corto", 58);
insert into super values(id_super, "Mar en Calma", 680, "Largo", 59);
insert into super values(id_super, "Montaje", 1600, "Corto", 60);
insert into super values(id_super, "Portales Interdimensionales", 0, "Normal", 61);
insert into super values(id_super, "El Escondite Inglés", 0, "Ninguno", 62);
insert into super values(id_super, "Manipulación", 0, "Largo", 63);
insert into super values(id_super, "Tragaldabas", 0, "Muy Largo", 64);
insert into super values(id_super, "¡Chu, Chu!", 3500, "Muy Largo", 65);
insert into super values(id_super, "Crisálida", 8400, "Largo", 66);
insert into super values(id_super, "Fuera de Plano", 2380, "Ninguno", 67);
insert into super values(id_super, "Estribillo Pegadizo", 0, "Normal", 68);
insert into super values(id_super, "Siembra Punzante", 2000, "Largo", 69);
insert into super values(id_super, "Granada Punzante", 800, "Largo", 70);
insert into super values(id_super, "Caída Libre", 8960, " Largo", 71);
insert into super values(id_super, "Bomba de Humo", 0, "Ninguno", 72);
insert into super values(id_super, "Tormenta de Arena", 0, "Largo", 73);
insert into super values(id_super, "Líquido Ígneo", 3840, "Largo", 74);
insert into super values(id_super, "Megamáquina", 0, "Ninguno", 75);
insert into super values(id_super, "Trucos de Fiesta", 2000, "Corto", 76);
insert into super values(id_super, "Caramelo Explosivo", 3760, "Normal", 77);
insert into super values(id_super, "Este es mi Dominio", 0, "Largo", 78);
insert into super values(id_super, "A Caballito", 2000, "Normal", 79);
insert into super values(id_super, "A Lomos de Dragón", 2560, "Normal", 80);


insert into ataque values(id_ataque, "Perdigones", 3000, "Largo", "Normal", 1);
insert into ataque values(id_ataque, "Temblor", 1920, "Normal", "Muy Rápida", 2);
insert into ataque values(id_ataque, "Revólveres", 4320, "Largo", "Rápida", 3);
insert into ataque values(id_ataque, "A Dos Cañones", 4400, "Normal", "Normal", 4);
insert into ataque values(id_ataque, "Cohete", 2320, "Largo", "Lenta", 5);
insert into ataque values(id_ataque, "Puños de Furia", 3040, "Corto", "Muy Rápida", 6);
insert into ataque values(id_ataque, "Desparrame", 1600, "Largo", "Lenta", 7);
insert into ataque values(id_ataque, "Serenata", 1520, "Largo", "Normal", 8);
insert into ataque values(id_ataque, "Manos de Piedra", 2760, "Corto", "Muy Rápida", 9);
insert into ataque values(id_ataque, "Rifle Aturdidor", 2120, "Largo", "Normal", 10);
insert into ataque values(id_ataque, "Mecha Corta", 3200, "Largo", "Normal", 11);
insert into ataque values(id_ataque, "Miniminas", 3840, "Largo", "Muy Lenta", 12);
insert into ataque values(id_ataque, "Rayos Abrasivos", 3840, "Muy Largo",  "Normal", 13);
insert into ataque values(id_ataque, "Balas Rebotadoras", 3200, "Muy Largo", "Muy Rápida", 14);
insert into ataque values(id_ataque, "Carga Doble", 4800, "Normal", "Normal", 15);
insert into ataque values(id_ataque, "Lanzamonedas", 1960, "Largo", "Lenta", 16);
insert into ataque values(id_ataque, "Piqueta", 1480, "Largo", "Lenta", 17);
insert into ataque values(id_ataque, "Martillo Mecánico", 2480, "Corto", "Normal", 18);
insert into ataque values(id_ataque, "Globos Locos", 2000, "Muy Largo", "Normal", 19);
insert into ataque values(id_ataque, "Águila Imperial", 3840, "Largo", "Normal", 20);
insert into ataque values(id_ataque, "Aerosol", 1040, "Normal", "Lenta", 21);
insert into ataque values(id_ataque, "Efectos Especiales", 2160, "Largo", "Normal", 22);
insert into ataque values(id_ataque, "Disparaguas", 3400, "Muy Largo", "Muy Lenta", 23);
insert into ataque values(id_ataque, "Lluvia de Chatarra", 4680, "Largo", "Muy Rápida", 24);
insert into ataque values(id_ataque, "Martillazo", 2480, "Normal", "Muy Rápida", 25);
insert into ataque values(id_ataque, "Tres Strikes", 2800, "Corto", "Muy Rápida", 26);
insert into ataque values(id_ataque, "Picadura", 1600, "Muy Largo", " Muy Rápida", 27);
insert into ataque values(id_ataque, "Trigonanimetría", 4440, "Largo", "Normal", 28);
insert into ataque values(id_ataque, "Furia Desatada", 2160, "Corto", "Muy Rápida", 29);
insert into ataque values(id_ataque, "Lanzamonedas", 5040, "Largo", "Normal", 30);
insert into ataque values(id_ataque, "Cataplum", 2120, "Largo", "Lenta", 31);
insert into ataque values(id_ataque, "Diente de Leche", 2240, "Largo", "Muy Rápida", 32);
insert into ataque values(id_ataque, "Vórtice Polar", 3360, "Largo", "Muy Rápida", 33);
insert into ataque values(id_ataque, "Disparo Justiciero", 1000, "Largo", "Normal", 34);
insert into ataque values(id_ataque, "Conmoción", 2080, "Muy Largo", "Rápida", 35);
insert into ataque values(id_ataque, "Barrido", 1600, "Normal", "Rápida", 36);
insert into ataque values(id_ataque, "Ojos de Diamante", 3120, "Largo", "Normal", 37);
insert into ataque values(id_ataque, "Gancho Demoledor", 3200, "Corto", "Normal", 38);
insert into ataque values(id_ataque, "Dispensador de Caramelos", 2600, "Largo", "Normal", 39);
insert into ataque values(id_ataque, "Cohete a Presión", 2560, "Largo", "Normal", 40);
insert into ataque values(id_ataque, "Globo Explosivo", 4200, "Corto", "Muy Rápida", 41);
insert into ataque values(id_ataque, "Galletas Recién Hechas", 3120, "Largo", "Normal", 42);
insert into ataque values(id_ataque, "Dispensadores de Tiquets", 1400, "Largo", "Muy Lenta", 43);
insert into ataque values(id_ataque, "Flecha de Aguijón", 4400, "Muy Largo", "Muy Rápida", 44);
insert into ataque values(id_ataque, "Palazo", 2000, "Corto", "Muy Lenta", 45);
insert into ataque values(id_ataque, "Trio de Cartas", 2880, "Largo", "Lenta", 46);
insert into ataque values(id_ataque, "Humadera Mística", 2000, "Muy Largo", "Lenta", 47);
insert into ataque values(id_ataque, "Tiroteo Veloz", 2560, "Largo", "Muy Rápida", 48);
insert into ataque values(id_ataque, "Maletas Extraviadas", 1520, "Largo", "Normal", 49);
insert into ataque values(id_ataque, "Bomba de Semillas", 1960, "Normal", "Normal", 50);
insert into ataque values(id_ataque, "Dosis Exacta", 760, "Muy Largo", "Rápida", 51);
insert into ataque values(id_ataque, "Bomba Viscosa", 2160, "Largo", "Lenta", 52);
insert into ataque values(id_ataque, "Congelación Cerebral", 2640, "Muy Largo", "Muy Rápida", 53);
insert into ataque values(id_ataque, "Láser Doble", 2400, "Largo", "Rápida", 54);
insert into ataque values(id_ataque, "Golpe Jurásico", 4200, "Corto", "Muy Rápida", 55);
insert into ataque values(id_ataque, "Zapatillatsu", 2720, "Muy Largo", "Muy Rápida", 56);
insert into ataque values(id_ataque, "Disparahuevos", 1280, "Muy Largo", "Normal", 57);
insert into ataque values(id_ataque, "Agudo", 1960, "Normal", "Normal", 58);
insert into ataque values(id_ataque, "De Buena Tinta", 2760, "Largo", "Normal", 59);
insert into ataque values(id_ataque, "Destello de Lente", 2760, "Normal", "Normal", 60);
insert into ataque values(id_ataque, "Dedo Revólver", 2320, "Largo", "Rápida", 61);
insert into ataque values(id_ataque, "Rifle de Marcas", 1400, "Muy Largo", "Normal", 62);
insert into ataque values(id_ataque, "Maldición de Farol", 2400, "Largo", "Lenta", 63);
insert into ataque values(id_ataque, "Ataque Comilón", 2400, "Corto", "Normal", 64);
insert into ataque values(id_ataque, "Máquina de Vapor", 3240, "Normal", "Lenta", 65);
insert into ataque values(id_ataque, "Yoyó", 1600, "Largo", "Lenta", 66);
insert into ataque values(id_ataque, "Micrófono de Brazo", 2180, "Normal", "Muy Lenta", 67);
insert into ataque values(id_ataque, "Notas Monstruosas", 920, "Largo", "Normal", 68);
insert into ataque values(id_ataque, "Espina Furtiva", 2400, "Corto", "Muy Rápida", 69);
insert into ataque values(id_ataque, "Corazón Espinado", 1080, "Largo", "Lenta", 70);
insert into ataque values(id_ataque, "Triple Daga", 1920, "Largo", "Rápida", 71);
insert into ataque values(id_ataque, "Estrellas Ninja", 3840, "Muy Largo", "Normal", 72);
insert into ataque values(id_ataque, "A Pedrada Limpia",1800, "Normal", "Normal", 73);
insert into ataque values(id_ataque, "Aliento", 4200, "Largo", "Muy Rápida", 74);
insert into ataque values(id_ataque, "Objetivo Localizado", 1200, "Largo", "Muy Rápida", 75);
insert into ataque values(id_ataque, "Refresco de la Justicia", 2360, "Normal", "Lenta", 76);
insert into ataque values(id_ataque, "Sombrero de Bufón", 3840, "Largo", "Normal", 77);
insert into ataque values(id_ataque, "Champiñones", 2800, "Normal", "Muy Rápida", 78);
insert into ataque values(id_ataque, "Garras", 2000, "Corto", "Muy Rápida", 79);
insert into ataque values(id_ataque, "Lanceada", 1200, "Normal", "Muy Rápida", 80);

insert into jugador values(id_jugador, "Alvaro", 20000);
insert into jugador values(id_jugador, "Andrei", 18000);
insert into jugador values(id_jugador, "Samuel", 40000);
insert into jugador values(id_jugador, "David", 12000);
insert into jugador values(id_jugador, "Javier", 10000);

/*Alvaro*/
insert into jugador_brawler values(id_jugador_brawler, 1, 1);
insert into jugador_brawler values(id_jugador_brawler, 1, 30);
insert into jugador_brawler values(id_jugador_brawler, 1, 2);
insert into jugador_brawler values(id_jugador_brawler, 1, 79);
insert into jugador_brawler values(id_jugador_brawler, 1, 5);
insert into jugador_brawler values(id_jugador_brawler, 1, 24);

/*Andrei*/
insert into jugador_brawler values(id_jugador_brawler, 2, 5);
insert into jugador_brawler values(id_jugador_brawler, 2, 4);
insert into jugador_brawler values(id_jugador_brawler, 2, 44);
insert into jugador_brawler values(id_jugador_brawler, 2, 24);
insert into jugador_brawler values(id_jugador_brawler, 2, 60);
insert into jugador_brawler values(id_jugador_brawler, 2, 55);

/*Samuel*/
insert into jugador_brawler values(id_jugador_brawler, 3, 24);
insert into jugador_brawler values(id_jugador_brawler, 3, 2);
insert into jugador_brawler values(id_jugador_brawler, 3, 21);
insert into jugador_brawler values(id_jugador_brawler, 3, 77);
insert into jugador_brawler values(id_jugador_brawler, 3, 47);
insert into jugador_brawler values(id_jugador_brawler, 3, 11);

/*David*/
insert into jugador_brawler values(id_jugador_brawler, 4, 4);
insert into jugador_brawler values(id_jugador_brawler, 4, 2);
insert into jugador_brawler values(id_jugador_brawler, 4, 1);

/*Javier*/
insert into jugador_brawler values(id_jugador_brawler, 5, 1);
insert into jugador_brawler values(id_jugador_brawler, 5, 34);
insert into jugador_brawler values(id_jugador_brawler, 5, 5);
insert into jugador_brawler values(id_jugador_brawler, 5, 7);


alter table `brawl_stars`.`brawler` add index(nombre_brawler);
alter table `brawl_stars`.`habilidad_estelar` add index(nombre_habilidad);
alter table `brawl_stars`.`gadget` add index(nombre_gadget);
alter table `brawl_stars`.`ataque` add index(daño);
alter table `brawl_stars`.`super` add index(daño);

create view habilidad_brawler as select nombre_brawler, nombre_habilidad from brawler inner join habilidad_estelar on brawler.id_brawler = habilidad_estelar.id_brawler;

create view gadget_brawler as select nombre_brawler, nombre_gadget from brawler inner join gadget on brawler.id_brawler = gadget.id_brawler;

create view ataque_brawler as select nombre_brawler, nombre_ataque, daño from brawler inner join ataque on brawler.id_brawler = ataque.id_brawler;

create view super_brawler as select nombre_brawler, nombre_super, daño from brawler inner join super on brawler.id_brawler = super.id_brawler;

create view brawler_completo as select nombre_brawler, nombre_habilidad, nombre_gadget, nombre_ataque, ataque.daño as daño_ataque, nombre_super, super.daño as daño_super 
from brawler 
inner join habilidad_estelar on brawler.id_brawler = habilidad_estelar.id_brawler 
inner join gadget on brawler.id_brawler = gadget.id_brawler 
inner join ataque on brawler.id_brawler = ataque.id_brawler 
inner join super on brawler.id_brawler = super.id_brawler;

/*El procedimiento almacenado AddJugadorConBrawler se encargará de insertar un nuevo jugador en la tabla jugador y de asignar un Brawler a este jugador en la tabla jugador_brawler. El procedimiento también devolverá el id_jugador generado.*/

DELIMITER //

CREATE PROCEDURE AddJugadorConBrawler(
    IN nombre_jugador VARCHAR(45),
    IN copas INT,
    IN id_brawler INT,
    OUT id_jugador INT
)
BEGIN
    -- Insertar un nuevo jugador
    INSERT INTO jugador (nombre_jugador, copas)
    VALUES (nombre_jugador, copas);
   
    -- Obtener el último id_jugador insertado
    SET id_jugador = LAST_INSERT_ID();
   
    -- Asignar el Brawler al nuevo jugador
    INSERT INTO jugador_brawler (id_jugador, id_brawler)
    VALUES (id_jugador, id_brawler);
END //

DELIMITER ;

-- Declaramos la variable para recibir el ID del jugador
-- SET @new_player_id = 0;

-- Llamamos al procedimiento
-- CALL AddJugadorConBrawler('Pepito', 1200, 1, @new_player_id);

-- Consultamos el ID del nuevo jugador
-- SELECT @new_player_id AS 'Nuevo ID de Jugador';



/*La función CalcularDanioPromedioBrawler calculará el daño promedio de un Brawler, considerando tanto el daño de sus ataques como de sus super ataques. Esta función tomará el id_brawler como entrada y devolverá el daño promedio.*/

DELIMITER //

CREATE FUNCTION CalcularDanioPromedioBrawler(
    id_brawler INT
)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE promedio DECIMAL(10,2);
    DECLARE total_danio INT;
    DECLARE total_ataques INT;

    -- Sumar el daño de todos los ataques normales del Brawler
    SELECT IFNULL(SUM(daño), 0) INTO total_danio
    FROM ataque
    WHERE id_brawler = id_brawler;

    -- Sumar el daño de todos los super ataques del Brawler
    SELECT total_danio + IFNULL(SUM(daño), 0) INTO total_danio
    FROM super
    WHERE id_brawler = id_brawler;

    -- Contar el número de ataques y super ataques del Brawler
    SELECT COUNT(*) INTO total_ataques
    FROM ataque
    WHERE id_brawler = id_brawler;

    SELECT total_ataques + COUNT(*) INTO total_ataques
    FROM super
    WHERE id_brawler = id_brawler;

    -- Calcular el promedio de daño
    SET promedio = IF(total_ataques > 0, total_danio / total_ataques, 0);

    RETURN promedio;
END //

DELIMITER ;


-- Obtener el daño promedio del Brawler con ID 1
-- SELECT CalcularDanioPromedioBrawler(1) AS 'Daño Promedio';
  


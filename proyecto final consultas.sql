/*Script con consultas de distinto grado de dificultad (mínimo 10)*/

/*1*/
select * from brawler;

/*2*/
select nombre_ataque, daño from ataque;

/*3*/
select * from super where daño = (select max(daño) from super);

/*4*/
select * from ataque where alcance = (select min(alcance) from ataque);

/*5*/
select nombre_super, nombre_brawler from super inner join brawler where brawler.id_brawler = super.id_brawler and daño = 0 order by nombre_brawler;

/*6*/
select nombre_brawler, nombre_gadget from gadget inner join brawler where gadget.id_brawler = brawler.id_brawler order by nombre_brawler asc;
 
/*7*/
update ataque set daño = daño * 1.05 where daño < 1000;

/*8*/
delete from gadget where id_brawler = 1;

/*9*/
select nombre_brawler, nombre_ataque, daño from ataque inner join brawler where ataque.id_brawler = brawler.id_brawler and daño = (select max(daño) from ataque); 

/*10*/
select * from brawl_stars.brawler_completo;

/*11*/
select id_jugador, jugador_brawler.id_brawler, nombre_brawler from jugador_brawler inner join brawler where jugador_brawler.id_brawler = brawler.id_brawler;










create database db_generation_online5;

use db_generation_online5;

create table tb_classe5(
id bigint auto_increment,
 nome varchar (255),
 raca varchar (255),
 classe varchar (255),
 primary key (id)
);

insert into tb_classe5 (nome, raca, classe) values ("Jax","Orc","Guerreiro");
insert into tb_classe5 (nome, raca, classe) values ("Ragnar","Elfo","Guerreiro");
insert into tb_classe5 (nome, raca, classe) values ("Tanjiro","Humano","Guerreiro");
insert into tb_classe5 (nome, raca, classe) values ("Legolas","Elfo","Arqueiro");
insert into tb_classe5 (nome, raca, classe) values ("Gandalf","Humano","Mago");

select * from tb_classe5;

create table tb_personagem5(
id bigint auto_increment,
nome varchar (255),
vida bigint,
stamina bigint,
ataque bigint,
defesa bigint,
poderMax bigint,
personagem5_id bigint,
primary key (id),
foreign key (personagem5_id) references tb_classe5(id)
);

insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax) 
values ("Jax",5.000,3.000,8.000,2.500,12.000);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
values ("Ragnar",10.000,6.500,3.100,12.000,15.000);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
 values ("Tanjiro",7.000,5.650,20.000,2.000,25.000);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
 values ("Legolas",6.000,3.000,7.000,2.500,10.000);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
 values ("Gandalf",4.000,3.000,10.000,2.500,18.000);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
 values ("Sauron",5.200,3.500,8.400,3.600,11.500);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
 values ("Muzan",5.400,4.400,8.000,2.700,12.500);
insert into tb_personagem5 (nome, vida, stamina, ataque, defesa ,poderMax)
 values ("Reiner",8.000,4.000,3.600,5.500,6.000);

select  * from tb_personagem5;
select * from tb_personagem5 where ataque >2.000;
select * from tb_personagem5 where ataque >10.000;
select * from tb_personagem5 where defesa >1.000 and defesa <4.000;
select * from tb_personagem5 where nome like "%c%";
select * from tb_personagem5 where nome like "%a%";


select * from tb_personagem5 inner join tb_classe5
 on tb_personagem5.personagem5_id = tb_classe5.id;
 
select * from tb_classe5 where classe = "Arqueiro";

 

 
  






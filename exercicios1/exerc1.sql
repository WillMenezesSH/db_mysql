create database db_academiaFit;

use db_academiaFit;

create table tb_funcionaries(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
    salario decimal,
    setor varchar(255),
    horario varchar(255),
    primary key (id)
    );

insert into tb_funcionaries(nome,idade,salario,setor,horario) values ("Rogerio Lopez", 41, 2900, "Musculação","Manhã");
insert into tb_funcionaries(nome,idade,salario,setor,horario) values ("Afonso", 23, 2300, "Lutas","Manhã");
insert into tb_funcionaries(nome,idade,salario,setor,horario) values ("Raphael Luna", 25, 2200, "Danças","Manhã");
insert into tb_funcionaries(nome,idade,salario,setor,horario) values ("Rosa Moura", 45, 600, "Limpeza","Manhã");
insert into tb_funcionaries(nome,idade,salario,setor,horario) values ("Jayne Silva", 22, 850, "Musculação","Manhã");
select * from tb_funcionaries;

select * from tb_funcionaries where salario >2000;
select * from tb_funcionaries where salario <2000;
update tb_funcionaries set salario = 3000 where id = 2;
select * from tb_funcionaries;



create database db_escola;

use db_escola;

create table tb_alunos(
	id bigint auto_increment,
    nome varchar(255),
    idade int,
	turma int,
    matricula int,
    nota decimal,
    primary key (id)
    );

insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Vlad",15,45,50,7.50);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Alucard",14,45,58,6.41);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Eren",18,35,12,10.00);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Sypha",17,35,15,9.78);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Jax",16,42,25,10.00);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Stahl",12,64,78,1.00);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Ragnar",14,48,49,9.55);
insert into tb_alunos(nome,idade,turma,matricula,nota) values ("Flint",13,51,44,5.5);
alter table tb_alunos modify nota decimal(8,2);
select * from tb_alunos;
select * from tb_alunos where nota > 7;
select * from tb_alunos where nota < 7;
update tb_alunos set nota = 2.9 where id = 6;


delete from tb_alunos where id = 9;





create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categorias(
id bigint auto_increment, 
nome varchar (255),
email varchar (255),
senha varchar(255),
 primary key (id)
);

insert into tb_categorias (nome, email, senha) values ("Jax Teller","jaxtt@hotmail.com","motoca123");
insert into tb_categorias (nome, email, senha) values ("Ragnar Lothbrok","lothbrok@outlook.com","machadinho@");
insert into tb_categorias (nome, email, senha) values ("Tanjiro Kamado","tanjiro0@Ooutlook.com","muzanwilldi*");
insert into tb_categorias (nome, email, senha) values ("Legolas","legol@gmail.com","flechas444");
insert into tb_categorias (nome, email, senha) values ("Gandalf","magorules@hotmail.com","bolinhadefogo487");

select * from tb_categorias;

create table tb_produtos(
id bigint auto_increment,
nome varchar (255),
categoria varchar(255),
subCategoria varchar(255),
duracao varchar(255),
preco decimal (8,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
values ("Curso Completo do Desenvolvedor Web","Desenvolvimento","Desenvolvimento Web","200 horas",179.90);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
values ("Curso Java - Iniciantes","Desenvolvimento","Desenvolvimento Web","150 horas",27.90);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
 values ("Photoshop 2022","Design","Design Grafico","180 horas",37.90);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
 values ("Illustrator 2020","Design","Design Grafico","250 horas", 38.50);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
 values ("WordPress completo","Design","Web Design","210 horas",45.50);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
 values ("Social Media Pro","Design","Web Design","100 horas",17.99);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
 values ("Criatividade e Inovação","Negócios","Empreendedorismo","100 horas",70.90);
insert into tb_produtos (nome, categoria, subcategoria, duracao, preco)
 values ("Front-End Avançado","Desenvolvimento","Desenvolvimento Web","350 horas",79.90);

select  * from tb_produtos;
select * from tb_produtos where preco >50.00;
select * from tb_produtos where preco >3 and preco <60.00;
select * from tb_produtos where nome like "%j%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria = "Desenvolvimento";
 
  






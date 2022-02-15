create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

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
quantidade int,
preco decimal (8,2),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
values ("Machadinho","Ferramentas","Ferramentas para Jardim",200.00,179.90);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
values ("Ancinho","Ferramentas","Ferramentas para Jardim",290,11.20);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Cera Protetora","Ferramentas","Ferramentas Automotivas",150,37.90);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Car Fresh","Ferramentas","Ferramentas para Jardim",100,99.90);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Lâmpada Fluorescente","Iluminação","Lâmpadas",210,5.50);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Fita Led","Iluminação","Fita Led",100,7.99);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Cortina Blackout","Decoração","Cortinas",350,70.90);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Cortina Linho","Decoração","Cortinas",200,75.90);

select  * from tb_produtos;
select * from tb_produtos where preco >50.00;
select * from tb_produtos where preco >3 and preco <60.00;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria = "Decoração";
 
  






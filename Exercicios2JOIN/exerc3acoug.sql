create database db_farmacia_do_bem;

use db_farmacia_do_bem;

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
values ("Galeto","Frango","Frango Galeto",300.00,55.00);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
values ("Gado","Bovina","Carne de gado",250,100);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Picanha","Bovina","Picanha",100,60.00);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Capão","Frango","Frango Capão",3,99.00);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Contrafilé","Bovina","Contrafilé",200,14.50);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Caipira","Frango","Caipira",100,7.99);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Comum","Frango","Frango Comum",350,8.15);
insert into tb_produtos (nome, categoria, subcategoria, quantidade, preco)
 values ("Coxão Mole","Bovina","Coxão Mole",200,59.90);

select  * from tb_produtos;
select * from tb_produtos where preco >50.00;
select * from tb_produtos where preco >3 and preco <60.00;
select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categorias
on tb_categorias.id = tb_produtos.categoria_id;

select * from tb_produtos where categoria = "Bovina";
 
  






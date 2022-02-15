create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment, 
nome varchar (255),
email varchar (255),
senha varchar(255),
 primary key (id)
);

insert into tb_categoria (nome, email, senha) values ("Jax Teller","jaxtt@hotmail.com","motoca123");
insert into tb_categoria (nome, email, senha) values ("Ragnar Lothbrok","lothbrok@outlook.com","machadinho@");
insert into tb_categoria (nome, email, senha) values ("Tanjiro Kamado","tanjiro0@Ooutlook.com","muzanwilldi*");
insert into tb_categoria (nome, email, senha) values ("Legolas","legol@gmail.com","flechas444");
insert into tb_categoria (nome, email, senha) values ("Gandalf","magorules@hotmail.com","bolinhadefogo487");

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255),
categoria varchar(255),
subCategoria varchar(255),
validade date,
preco decimal (8,2),
produtos_id bigint,
primary key (id),
foreign key (produtos_id) references tb_categoria(id)
);

insert into tb_produto (nome, categoria, subcategoria, validade, preco)
values ("Dipirona","Dor e Contusão","Analgésicos",04/05/2022,12.00);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
values ("Paracetamol","Dor e Contusão","Antiinflamatórios",01/08/2022,10.20);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
 values ("Tizanidina","Dor e Contusão","Relaxante Muscular",14/12/2022,16.80);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
 values ("Nimesulida","Gripe e Resfriado","Dor de Garganta",04/08/2023,3.20);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
 values ("Dipirona","Gripe e Resfriado","Descongetionante Nasal",01/09/2022,14.50);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
 values ("Furosemida","Pressão Alta","Diuréticos",08/08/2023,2.99);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
 values ("Cabergolina","Hormônios e Enzimas","Reposição Hormonal",25/12/2027,12.00);
insert into tb_produto (nome, categoria, subcategoria, validade, preco)
 values ("Tibolona","Hormônios e Enzimas","Reposição Hormonal",20/02/2025,12.00);

select  * from tb_produto;
select * from tb_produto where preco >50.00;
select * from tb_produto where preco >10.00;
select * from tb_produto where preco >3 and preco <60.00;
select * from tb_produto where nome like "%b%";

select * from tb_produto where categoria = "Hormônios e Enzimas";
 
  






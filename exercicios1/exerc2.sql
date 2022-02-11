create database db_ecommerce;

use db_ecommerce;

create table tb_loja(
	id bigint auto_increment,
    nome varchar(255),
	quantidade int,
    valor decimal,
    categoria varchar(255),
    validade varchar(255),
    primary key (id)
    );

insert into tb_loja(nome,quantidade,valor,categoria, validade) values ("Iphone X", 500, 4000.00,"Eletronicos","5 anos");
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("Livro SDA", 150, 49.90, "Educação","~~");
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("Uniforme Taekwondo A3",10,129.90,"Esportes","5 anos");
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("Headphone RazMax 7.1",15,739.00,"Acessórios","~~");
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("Furadeira Elétrica",50,649.00,"Ferramentas","~~");
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("Whey Integral Titanium",100, 149.00,"Fitness","6 meses"); 
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("Faixa Roxa JJ",100,49.50,"Esportes","10 anos");
insert into tb_loja(nome,quantidade,valor,categoria,validade) values ("T-Shirt SNK",150, 60.00,"Moda","5-7 anos");

select * from tb_loja;
select * from tb_loja where valor > 500;
select * from tb_loja where valor < 500;

update tb_loja set valor = 5000.00 where id = 3;
update tb_loja set valor = 759.00 where id = 6;
update tb_loja set quantidade = 10 where id = 6;


alter table tb_loja modify valor decimal(8,2);

delete from tb_loja where id = 1;
delete from tb_loja where id = 2;


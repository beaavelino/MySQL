create database db_pizzaria;
use db_pizzaria;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(200),
faixa_de_preço varchar(10),
primary key (id)
);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(200),
ingredientes varchar(500),
valor double,
id_categoria bigint,
primary key (id),
foreign key (id_categoria) references tb_categoria(id)
);

insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 1", "Faixa 3");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 2", "Faixa 5");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 3", "Faixa 2");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 4", "Faixa 4");
insert into tb_categoria (categoria, faixa_de_preço) values ("Categoria 5", "Faixa 1");

select * from tb_categoria;

insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Suica", "Massa, molho, frango, bacon, peito de peru e catupiry", 38.50, 2);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Mussarela", "Massa, molho e queijo", 30.00, 3);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Portuguesa", "Massa, molho, palmito, presunto, ervilha, ovo e queijo", 38.00, 1);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Atum", "Massa, molho, atum e queijo", 45.00, 3);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Calabresa", "Massa, molho, calabresa e cebola", 30.00, 1);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Brocolis", "Massa, molho, brocolis e queijo", 43.00, 2);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Chocolate com morango", "Massa, chocolate e morango", 39.00,2);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Baiana", "Massa, molho, calabresa e pimenta calabresa" , 42.00,5);
insert into tb_pizza (sabor, ingredientes, valor, id_categoria) values ("Quatro queijos", "Massa, molho, queijo mussarela, queijo parmessão, queijo qualy, requeijão" , 36.00, 3);

select * from tb_pizza;

select * from tb_pizza where valor >= 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_categoria.id = tb_pizza.id_categoria
where id_categoria = 2
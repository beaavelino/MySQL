-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.


create database db_ecommerce;


use db_ecommerce;

Create table tb_produtos(
	id bigint auto_increment,
    produto varchar(40),
    codigo int,
    ativo boolean,
    valor double,
    primary key(id)
);


insert into tb_produtos(produto, codigo, ativo, valor) values ("Notebook","42",true,"6800");
insert into tb_produtos(produto, codigo, ativo, valor) values ("Mouse","59",true,"120");
insert into tb_produtos(produto, codigo, ativo, valor) values ("Teclado","23",true,"230");
insert into tb_produtos(produto, codigo, ativo, valor) values ("Fone de Ouvido","27",false,"130");
insert into tb_produtos(produto, codigo, ativo, valor) values ("Celular LG","88",true,"32");
insert into tb_produtos(produto, codigo, ativo, valor) values ("Carregador Nokia","20",false,"320");
insert into tb_produtos(produto, codigo, ativo, valor) values ("WebCam","43",true,"188");
insert into tb_produtos(produto, codigo, ativo, valor) values ("Notebook Gamer","83",false,"9070");


select * from tb_produtos;
select * from tb_produtos where valor > 500;
select * from tb_produtos where valor < 500;











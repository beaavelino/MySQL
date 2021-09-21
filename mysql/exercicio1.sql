create database db_rh;

use db_rh;

Create table tb_funcionaries(
	id bigint(5) auto_increment,
    nome varchar(40) not null,
    ativo boolean,
    setor varchar(40) not null,
    salario double,
    primary key(id)
);


insert into tb_funcionaries(nome, ativo, setor, salario) values ("Rafael Pereira",true,"Estoque","1800");
insert into tb_funcionaries(nome, ativo, setor, salario) values ("Roberto do Santos",false,"Compras","2100");
insert into tb_funcionaries(nome, ativo, setor, salario) values ("Davi Avelino",true,"Vendas","3900");
insert into tb_funcionaries(nome, ativo, setor, salario) values ("Joana Souza",true,"Logistico","4500");
insert into tb_funcionaries(nome, ativo, setor, salario) values ("Felipe Silva",false,"Estoque","1800");

select * from tb_funcionaries;
select * from tb_funcionaries where salario > 2000;
select * from tb_funcionaries where salario < 2000;
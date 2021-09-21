-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.


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
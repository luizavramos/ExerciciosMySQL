create database db_rhempresa;

use db_rhempresa;

create table tb_colaboradoresempresa(
id bigint auto_increment,
nome varchar(255),
nascimento date,
cargo varchar(255), 
salario double,
primary key (id)
);

select * from tb_colaboradoresempresa;

insert into tb_colaboradoresempresa(nome, nascimento, cargo, salario) values("Luiza", '1996-06-06' , "DEV", 8000);
insert into tb_colaboradoresempresa(nome, nascimento, cargo, salario) values("Luan", '1996-12-15' , "DEV", 8000);
insert into tb_colaboradoresempresa(nome, nascimento, cargo, salario) values("Carlos", '1997-07-25' , "DEV", 5000);
insert into tb_colaboradoresempresa(nome, nascimento, cargo, salario) values("Bianca", '1993-08-12' , "DEV", 7000);
insert into tb_colaboradoresempresa(nome, nascimento, cargo, salario) values("Bruna", '1992-08-27' , "DEV", 9000);

select * from tb_colaboradoresempresa where salario > 2000;
select * from tb_colaboradoresempresa where salario < 2000;

update tb_colaboradoresempresa set salario = 10000 where id=3;
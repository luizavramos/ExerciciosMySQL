create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
serie int,
nota double,
professor varchar(255),
primary key(id)
);

INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Lucas Vinicius", 8, 7.5, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Luiza Silva", 9, 9.5, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Joana Silva", 7, 6.5, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Jonathan Azevedo", 8, 6.5, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Laura Nunes", 8, 9.5, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Vitor Costa", 7, 10, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Leonardo", 8, 4.5, "Priscila");
INSERT INTO tb_estudantes (nome, serie, nota, professor) VALUES ("Virginia", 8, 10, "Priscila");

select * from tb_estudantes;

select * from tb_estudantes where nota > 7 ;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 8.5 where id = 4;


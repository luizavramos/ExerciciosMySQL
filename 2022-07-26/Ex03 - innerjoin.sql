create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

create table tb_categorias(
id bigint auto_increment,
nome varchar(255),
publico varchar(255),
primary key (id)
);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
peso float,
preco float,
descricao varchar(255),
primary key (id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_categorias(nome, publico) values ('Cosméticos','Feminino');
insert into tb_categorias(nome, publico) values ('Cosméticos','Masculino');
insert into tb_categorias(nome, publico) values ('Higiene','Unissex');
insert into tb_categorias(nome, publico) values ('Dermocosmético','Feminino');
insert into tb_categorias(nome, publico) values ('Dermocosmético','masculino');

insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Creme corporal',100, 45.90, 'Creme hidratante marca x', 1);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Creme corporal',100, 45.90, 'Creme hidratante marca x', 2);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Creme facial', 50, 85.90, 'Creme facial marca x', 1);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Sabonete Liquido', 500, 35.90, 'Sabonete Liquido marca x', 3);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Creme Firmador',300, 65.90, 'Creme firmador marca x', 4);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Creme para celulites', 250, 84.90, 'Creme para celulite marca x', 5);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Sabonete em barra', 100, 5.90, 'Sabonete em barra marca x', 3);
insert into tb_produtos (nome, peso, preco, descricao, categorias_id) values ('Batom',100, 25.90, 'batom marca x', 2);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 5 and 60;

select nome from tb_produtos where nome like "%C%";

select * from tb_produtos as a inner join tb_categorias as b on b.id = a.categorias_id;

select * from tb_produtos as a inner join tb_categorias as b on b.id = a.categorias_id where categorias_id = 2;
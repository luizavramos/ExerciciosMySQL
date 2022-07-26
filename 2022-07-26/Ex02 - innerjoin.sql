create database db_pizzaria_legal;

use db_pizzaria_legal;


create table tb_categorias(
id bigint auto_increment,
tamanho int,
tipo_massa varchar(255),
primary key (id)
);
create table tb_pizzas(
id bigint auto_increment,
preco double,
borda varchar(255),
tipo varchar(255),
nome varchar(255),
primary key(id),
categorias_id bigint,
foreign key (categorias_id) references tb_categorias(id)
);

select * from tb_pizzas;
select * from tb_categorias;
insert into tb_categorias (tamanho, tipo_massa) values (30, 'pan');
insert into tb_categorias (tamanho, tipo_massa) values (35, 'pan');
insert into tb_categorias (tamanho, tipo_massa) values (25, 'fina');
insert into tb_categorias (tamanho, tipo_massa) values (30, 'fina');
insert into tb_categorias (tamanho, tipo_massa) values (35, 'fina');

insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (45, 'recheada', 'salgada', 'mussarela', 3);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (55, 'simples', 'doce', 'chocolate', 5);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (80, 'recheada', 'salgada', 'portuguesa', 4);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (60, 'recheada', 'salgada', 'calabresa', 2);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (30, 'simples', 'salgada', 'marguerita', 1);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (48, 'recheada', 'salgada', 'frango com catupiry', 5);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (84, 'recheada', 'salgada', 'chocolate com morango', 3);
insert into tb_pizzas (preco, borda, tipo, nome, categorias_id) values (76, 'simples', 'salgada', 'quatro queijos', 2);

select * from tb_pizzas where preco > 45;
select * from tb_pizzas where preco between 50 and 100;
select nome from tb_pizzas where nome like "%c%";

select * from tb_categorias inner join tb_pizzas  on tb_categorias.id  = tb_pizzas.categorias_id;
select * from tb_categorias inner join tb_pizzas  on tb_categorias.id  = tb_pizzas.categorias_id where categorias_id = 3;





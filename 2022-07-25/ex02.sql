create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco double,
descricao varchar(500),
peso double,
primary key(id)
);

INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("Mesa", 899.0, "Mesa em madeira de 2m", 2.5);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("Cadeira", 355.99, "Cadeira azul ", 0.5);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("Computador", 1899.0, "Computador marca x, processador y", 1.2);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("Gaveteiro", 399.0, "Gaveteiro com 80 cm de altura", 2.8);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("Cadeira Gamer", 2899.0, "Cadeira gamer muito confortável", 2.0);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("Shampoo", 19.0, "Shampoo para cabelos lisos", 0.5);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("mouse", 99.0, "Mouse marca x, garantia 2 anos", 0.3);
INSERT INTO tb_produtos (nome, preco, descricao, peso) VALUES ("teclado", 299.0, "teclado marca x, garantia de 2 anos", 0.5);

select * from tb_produtos;

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 1799.0 where id=3;
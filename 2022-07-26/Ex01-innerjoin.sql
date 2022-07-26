create database db_generation_game_online;

use db_generation_game_online;


create table tb_classes(
id bigint auto_increment,
nome varchar(255),
arma varchar(255),
raca varchar(255),
descricao varchar(255),
primary key (id)
);


create table  tb_personagens (
id bigint auto_increment,
nome varchar(255),
vida int,
mana int,
defesa int,
ataque int,
primary key (id),
classe_id bigint,
foreign key (classe_id) references tb_classes(id)
);

insert into  tb_classes (nome, arma, raca, descricao) values ('Paladino','espada','livre', 'Cavaleiro Sagrado');
insert into  tb_classes (nome, arma, raca, descricao) values ('Mago','Cajado','elfo', 'Ser que manipula os 4 elementos');
insert into  tb_classes (nome, arma, raca, descricao) values ('Cavaleiro','espada','humano', 'Está sob o seu cavalo');
insert into  tb_classes (nome, arma, raca, descricao) values ('Bardos','flauta','humano', 'Curandeiro especializado no uso da música');
insert into  tb_classes (nome, arma, raca, descricao) values ('Necromante','Cajado','Zumbi', 'Bruxos que se comunicam com os mortos');

insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Conde dracula', 2000, 800, 900, 320, 5);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Flautista', 2300, 900, 500, 250, 4);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Shrek', 3000, 800, 1000, 800, 3);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Magrelo', 1000, 2000, 900, 600, 2);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Celta', 5000, 200, 900, 350, 1);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Jupiter', 2500, 800, 900, 720, 3);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Maguila', 1000, 2000, 900, 690, 2);
insert into  tb_personagens (nome, vida, mana, defesa, ataque, classe_id) values ('Brilho', 5000, 200, 900, 3400, 1);

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa >= 1000 and defesa <= 2000;

select nome from tb_personagens where nome like "%C%";

select * from tb_personagens as A inner join tb_classes AS b on b.id = a.classe_id;

select * from tb_personagens as A inner join tb_classes AS b on b.id = a.classe_id where classe_id = 2;




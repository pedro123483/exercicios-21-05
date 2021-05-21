create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment,
pais varchar(255) not null,
siglapais varchar(255) not null,
primary key(id)
);
insert tb_classe (pais, siglapais) values ("Brasil", "BR");
insert tb_classe (pais, siglapais) values ("Estados Unidos", "EUA");
insert tb_classe (pais, siglapais) values ("Alemanha", "DE");
insert tb_classe (pais, siglapais) values ("Japão", "JP");
insert tb_classe (pais, siglapais) values ("França", "FR");

select * from tb_classe;

create table tb_personagem (
id bigint(5) auto_increment,
nome varchar(255) not null,
poderdeataque int not null,
poderdedefesa int not null,
idade int not null,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classe (id)
);

insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Bob",3000, 1500, 27, 1);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Coringa",1000, 1800, 32, 2);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Flash",4500, 2100, 54, 3);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Batman",500, 1900, 37, 4);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Tyrion",5000, 500, 17, 5);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Naruto",1000, 1600, 27, 4);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Rock lee",2500, 1800, 49, 3);
insert tb_personagem (nome, poderdeataque, poderdedefesa, idade, classe_id) values ("Sasuke",3000, 1100, 40, 2);

select * from tb_personagem;

select * from tb_personagem where poderdeataque>2000;

select * from tb_personagem where poderdedefesa between 1000 and 2000;

select * from tb_personagem where nome like "c%";

select tb_personagem.id, tb_personagem.nome, tb_personagem.poderdeataque, tb_personagem.poderdedefesa, tb_classe.pais from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem where tb_personagem.classe_id = 2;




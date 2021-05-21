create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment,
sabor varchar(255) not null,
pedacos int not null,
primary key(id)
);
insert tb_categoria (sabor, pedacos) values ("salgada", 8);
insert tb_categoria (sabor, pedacos) values ("doce", 4);
select * from tb_categoria;

create table tb_pizza(
id bigint(5) auto_increment,
nome varchar(255) not null,
valor decimal not null,
contemcebola varchar(255) not null,
formadepagamento varchar(255) not null,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Mussarela", 22.99, "SIM", "Crédito ou débito", 1);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Calabresa", 15.99, "SIM", "Crédito ou débito",1);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Chocolate", 75.99, "NÃO", "Crédito ou débito",2);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Chocolate branco", 85.99, "NÃO", "Crédito ou débito",2);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Frango", 45.00, "SIM", "Crédito ou débito",1);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Portuguesa", 50.99, "SIM", "Crédito ou débito",1);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Nutella", 60.99, "SIM", "Crédito ou débito",2);
insert tb_pizza (nome, valor, contemcebola, formadepagamento, categoria_id) values ("Palmito", 20.99, "SIM", "Crédito ou débito",1);

select * from tb_pizza;
delete  from tb_pizza where id = 1;
delete from tb_pizza where id = 2;
select * from tb_pizza;
update tb_pizza set contemcebola = "NÃO" where id = 9;
select * from tb_pizza;

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza where nome like "c%";

select tb_pizza.id, tb_pizza.nome, tb_pizza.valor, tb_categoria.sabor from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;
select tb_pizza.id, tb_pizza.nome, tb_pizza.valor, tb_categoria.sabor from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 2;

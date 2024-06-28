CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

select * from tb_categorias

CREATE TABLE tb_categorias(
categoria_id int AUTO_INCREMENT,
tipo_sabor VARCHAR(10),
borda VARCHAR(20),
PRIMARY KEY (categoria_id)
);

CREATE TABLE tb_pizzas(
pizza_id int AUTO_INCREMENT,
categoria int NOT NULL,
sabor VARCHAR(50) NOT NULL,
preco DECIMAL(5,2) NOT NULL,
massa VARCHAR(10),
PRIMARY KEY(pizza_id),
FOREIGN KEY (categoria) REFERENCES tb_categorias(categoria_id)
);

INSERT INTO tb_categorias (tipo_sabor, borda)
VALUES ("doce","doce de leite"),
("doce","chocolate"),
("doce","sem borda"),
("salgada","catupiry"),
("salgada","cheddar"),
("salgada","sem borda");

INSERT INTO tb_pizzas (categoria, sabor, massa, preco)
VALUES (6,"Marguerita","fina",44.90),
(4,"Frango com catupiry","fina",44.90),
(5,"Hambúrguer","grossa",54.90),
(2,"Brigadeiro","grossa",69.90),
(1,"Bem casado","fina",64.90),
(3,"Romeu e Julieta","fina",72.90),
(4,"File mignon","grossa",109.90),
(1,"Banana","fina",62.90);

SELECT * FROM tb_pizzas WHERE preco < 45.00;

SELECT * FROM tb_pizzas WHERE preco >= 50 AND preco <= 100;

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

SELECT pizza_id, sabor, preco, massa, tipo_sabor, borda 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria = tb_categorias.categoria_id;

SELECT pizza_id, sabor, preco, massa, tipo_sabor, borda 
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria = tb_categorias.categoria_id
WHERE tipo_sabor = "doce"
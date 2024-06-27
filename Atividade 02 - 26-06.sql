CREATE DATABASE db_generation_ecommerce;

USE db_generation_ecommerce;

CREATE TABLE tb_produtos(
id_produto INT AUTO_INCREMENT,
nome_produto VARCHAR(100) NOT NULL,
marca VARCHAR(100) NOT NULL,
desc_produto VARCHAR(250),
preco DECIMAL(6,2) NOT NULL,
cores VARCHAR(100),
PRIMARY KEY (id_produto)
);

INSERT INTO tb_produtos
VALUES (DEFAULT,"Black Cat and the Magical Map Ribbon JSK","Metamorphose Temps de Fille","JSK",1016.56,"Verde,Marfim,Azul"),
(DEFAULT, "Crystal Tarot ~Guidance from the Stars~ Frill JSK","Metamorphose Temps de Fille","JSK",1272.74,"Rosa,Cinza,Marfim"),
(DEFAULT, "Camisa Bordada Constelação","Outros","Camisa", 68.79,"Bege,Branco,Preto,Vermelho,Marrom"),
(DEFAULT, "Sapatilha Dance Alice","Lolita Pimenta","Sapatos",279.00,"Preto,Vermelho,Epoque,Pérola,Azul,Matcha,Fucsia"),
(DEFAULT,"Vestido listrado","Punkuloli Store","OP",200.00,"Preto/rosa,Preto/laranja,Preto/verde"),
(DEFAULT,"Piste d'un Cirque Collar","Alice and the Pirates,","Acessório",338.89,"Preto,Bordô,Bordô/branco"),
(DEFAULT,"Piste d'un Cirque Ribbon clip","Alice and the Pirates","Acessório",188.30,"Preto,Bordô,Branco"),
(DEFAULT,"Chess Alice～My memorable Treasure～JSK","Baby the stars shine bright","JSK",1310.51,"Rosa,Azul,Vermelho,Verde,Preto")

SELECT * FROM tb_produtos
WHERE preco > 500;

SELECT * FROM tb_produtos
WHERE preco <= 500;

UPDATE tb_produtos SET marca = "Alice and the Pirates" WHERE id_produto = 6;
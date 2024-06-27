CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id_classe INT AUTO_INCREMENT,
nome_classe VARCHAR(50),
tipo_atk VARCHAR(50),
taxa_crit DECIMAL (3,2),
dano_crit DECIMAL (3,2),
PRIMARY KEY (id_classe)
);

CREATE TABLE tb_personagens(
id_char INT AUTO_INCREMENT,
nome_char VARCHAR(50) NOT NULL,
id_classe INT,
base_atk DECIMAL(6,2) NOT NULL,
base_def DECIMAL(6,2) NOT NULL,
velocidade DECIMAL (3,2) NOT NULL,
PRIMARY KEY (id_char),
FOREIGN KEY (id_classe) REFERENCES tb_classes (id_classe)
);

INSERT INTO tb_classes
VALUES (DEFAULT,"Cavaleiro","Corpo a corpo",0.50,2.00),
(DEFAULT, "Arqueiro", "A distância",0.30,3.50),
(DEFAULT, "Mago", "A distância",0.70,2.50),
(DEFAULT, "Tanque","Corpo a corpo",0.25,4.00),
(DEFAULT, "Curandeiro", "Meia distância",0.80,1.25);

INSERT INTO tb_personagens
VALUES (DEFAULT,"Diluc",1,3000,2000,1.00),
(DEFAULT, "Kokomi",5,750,1200,1.15),
(DEFAULT, "Alfonse",4,1800,3000,0.80),
(DEFAULT, "Fischl",2,1100,950,1.50),
(DEFAULT, "Odile",3,2100,800,0.95),
(DEFAULT, "Isabeau",4,2500,2500,0.90),
(DEFAULT, "Bertha",1,2000,1500,1.10),
(DEFAULT, "Ralsei",5,950,1600,1.00);

SELECT * FROM tb_personagens
WHERE base_atk > 2000;

SELECT * FROM tb_personagens
WHERE base_def <= 2000 AND base_def >= 1000;
 
 SELECT * FROM tb_personagens
 WHERE nome_char LIKE "%c%";
 
 SELECT nome_char, nome_classe, tipo_atk, base_atk, base_def, taxa_crit, dano_crit, velocidade
 FROM tb_personagens
 INNER JOIN tb_classes
 ON tb_personagens.id_classe = tb_classes.id_classe;
 
SELECT nome_char, nome_classe, tipo_atk, base_atk, base_def, taxa_crit, dano_crit, velocidade
 FROM tb_personagens
 INNER JOIN tb_classes
 ON tb_personagens.id_classe = tb_classes.id_classe
 WHERE nome_classe = "tanque"
 
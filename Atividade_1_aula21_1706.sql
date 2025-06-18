/*Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.*/

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

/*Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online. */
CREATE TABLE tb_personagens(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    poder DECIMAL(6,2) NOT NULL,
    defesa DECIMAL(6,2) NOT NULL,
    sexo VARCHAR(100) NOT NULL,
    idclasse BIGINT NOT NULL
);

/* Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online. */

CREATE TABLE tb_classe(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(50) NOT NULL,
    terra VARCHAR(50) NOT NULL
);

/* Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens. */

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classe
FOREIGN KEY (idclasse) REFERENCES tb_classe(id);

/*Insira 5 registros na tabela tb_classes. */

INSERT INTO tb_classe(classe,terra) VALUES ("Mage", "Terras ao norte");
INSERT INTO tb_classe(classe,terra) VALUES ("Curandeire", "Terras ao sul");
INSERT INTO tb_classe(classe,terra) VALUES ("Feiticeire", "Terras ao leste");
INSERT INTO tb_classe(classe,terra) VALUES ("Guerreire", "Terra ao Centro");
INSERT INTO tb_classe(classe,terra) VALUES ("Arqueire", "Terra ao Extremo leste");

/* Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes. */

INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Daniel",1000,2500,"M",1);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Mario",2300,1500,"M",3);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Amelia",3000,2800,"F",1);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Josefina",6700,2500,"F",2);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Marretão",9000,2500,"M",4);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Torrada",400,4500,"M",5);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Florizinho",990,3450,"F",2);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Docinho",1190,950,"F",2);
INSERT INTO tb_personagens(nome,poder,defesa,sexo,idclasse) VALUES ("Lindinha",990,450,"F",2);

/*Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000. */

SELECT nome,poder FROM tb_personagens WHERE PODER >=2000;

/*Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000*/
SELECT nome,defesa FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

/*Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome. */

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes. */

SELECT tb_personagens.nome, tb_personagens.poder, tb_personagens.defesa, tb_classe.classe, tb_classe.terra FROM tb_personagens
INNER JOIN tb_classe
on tb_personagens.idclasse = tb_classe.id;

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros). */

SELECT tb_personagens.nome, tb_personagens.poder, tb_personagens.defesa, tb_classe.classe, tb_classe.terra FROM tb_personagens
INNER JOIN tb_classe
on tb_personagens.idclasse = tb_classe.id
WHERE tb_classe.classe LIKE "%Arqueire%";




/*Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas tb_pizzas e tb_categorias, que deverão estar relacionadas. */

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

/* Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas. */
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    borda VARCHAR(50),
    tipo DECIMAL(6,2)
);
/*Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.*/

CREATE TABLE tb_pizza(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(55),
    preco DECIMAL(6,2),
    tipomassa VARCHAR(50),
    idcategorias BIGINT
);

/* Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas. */

ALTER TABLE tb_pizza ADD CONSTRAINT fk_pizza_categorias
FOREIGN KEY (idcategorias) REFERENCES tb_categorias(id);

/* Insira 5 registros na tabela tb_categorias. */
INSERT INTO tb_categorias(borda, tipo) VALUES ("Catupiry", "Normal");
INSERT INTO tb_categorias(borda, tipo) VALUES ("Quatro queijos", "Premium");
INSERT INTO tb_categorias(borda, tipo) VALUES ("Chedar", "Normal");
INSERT INTO tb_categorias(borda, tipo) VALUES ("Normal", "Simples");
INSERT INTO tb_categorias(borda, tipo) VALUES ("2 Queijos", "Premium");
/* Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias. */

INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Calabresa",40.00,"fina",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Mussarela",44.00,"Pão",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Portuguesa",48.00,"Italiana",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Quatro Queijos",50.00,"fina",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Moda",60.00,"Normal",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Bahianinha",55.00,"fina",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Peperone",48.00,"Pão",4);
INSERT INTO tb_pizza(nome,preco,tipomassa,idcategorias) VALUES ("Atum",58.00,"Italiana",4);

/*Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00 */

SELECT * FROM tb_pizza WHERE preco > 45.00;

/*Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00. */

SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

/* Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome. */

SELECT * FROM tb_pizza WHERE nome LIKE "%M%";

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias. */
SELECT * FROM tb_pizza
INNER JOIN tb_categorias
on tb_pizza.idcategorias = tb_categorias.id;

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).*/

SELECT * FROM tb_pizza
INNER JOIN tb_categorias
on tb_pizza.idcategorias = tb_categorias.id
WHERE tipomassa = "fina";



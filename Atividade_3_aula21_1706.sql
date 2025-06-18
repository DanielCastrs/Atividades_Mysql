/* Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome db_farmacia_bem_estar. */

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

/* Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos. */
CREATE TABLE tb_categorias(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(55),
    fabricante VARCHAR(55)
);

/* Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia. */

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(55),
    preco DECIMAL(6,2),
    lote VARCHAR(55),
    idcategoria BIGINT
    );
    
/* Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos. */
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (idcategoria) REFERENCES tb_categorias(id);

/* Insira 5 registros na tabela tb_categorias. */
INSERT INTO tb_categorias(categoria,fabricante) VALUES ("Controlado","DrogFlex");
INSERT INTO tb_categorias(categoria,fabricante) VALUES ("Livre","DrogaRog");
INSERT INTO tb_categorias(categoria,fabricante) VALUES ("Controlado","DrogGiga");
INSERT INTO tb_categorias(categoria,fabricante) VALUES ("Livre","DrogBug");
INSERT INTO tb_categorias(categoria,fabricante) VALUES ("Controlado","Drogpl");

/*Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias. */

INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Soro",25.00,"LK123",2);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Dipirona",12.00,"CR728",4);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("ibuprofenu",10.00,"JH654",2);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Caltrate",30.00,"GT163",1);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Artromobil",48.00,"UH923",1);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Oxybery",5.00,"RR113",4);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Syntane",35.00,"UI098",3);
INSERT INTO tb_produtos(nome,preco,lote,idcategoria) VALUES ("Amoxilina",65.00,"MN654",5);

/*Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00. */

SELECT * FROM tb_produtos WHERE preco > 50.00;

/*Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.*/

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 and 60.00;

/*Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.*/

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.*/

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
on tb_produtos.idcategoria =tb_categorias.id;

/* Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).*/

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
on tb_produtos.idcategoria =tb_categorias.id
WHERE tb_categorias.categoria LIKE "Controlado" ;
/* Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce.  */
CREATE DATABASE db_ecommerce;

use db_ecommerce;

/*Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.*/

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade INT NOT NULL,
marca VARCHAR(255),
preco DECIMAL(6,2)
);

/* Insira nesta tabela no mínimo 8 dados (registros). */
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("sapato",200,"nike",255);
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("geladeira",50,"eletrolux",2500);
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("vestido",100,"Parix Moda",55.90);
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("Camiseta Brasil",111,"CBF",199.99);
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("TV Smart",30,"LG",3500.00);
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("PC Gamer",15,"Rise",4999.00);
INSERT INTO tb_produtos(nome, quantidade,marca,preco) VALUES ("Meia",500,"Adidas",25.00);

/* Faça um SELECT que retorne todes os produtos com o valor maior do que 500. */

SELECT * FROM tb_produtos WHERE preco >= 500;

/* Faça um SELECT que retorne todes os produtos com o valor menor do que 500. */
SELECT * FROM tb_produtos WHERE preco <= 500;

/* Ao término atualize um registro desta tabela através de uma query de atualização. */

UPDATE tb_produtos SET quantidade = 199 WHERE id = 1;


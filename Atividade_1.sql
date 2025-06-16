/* Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. */
CREATE DATABASE db_recursosh;

/* Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH. */
USE db_recursosh;
CREATE TABLE tb_funcionarios(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
dt_nasc DATE NOT NULL,
cargo VARCHAR(255),
salario DECIMAL(6,2)
);

#Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_funcionarios(nome, dt_nasc, cargo,salario) VALUES ("Romario","1985-05-19", "Analista Ti", 2500.00);
INSERT INTO tb_funcionarios(nome, dt_nasc, cargo,salario) VALUES ("Maria","1975-01-07", "Analista de Dados", 3500.00);
INSERT INTO tb_funcionarios(nome, dt_nasc, cargo,salario) VALUES ("José","1965-10-09", "Analista Financeiro",4500.00);
INSERT INTO tb_funcionarios(nome, dt_nasc, cargo,salario) VALUES ("João","1955-08-20", "Porteiro", 1900.00);
INSERT INTO tb_funcionarios(nome, dt_nasc, cargo,salario) VALUES ("Amelia","1977-05-30", "Gerente Geral",2200.00);

/*Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.*/
SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

/*Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.*/
SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

/*Ao término atualize um registro desta tabela através de uma query de atualização.*/
UPDATE tb_funcionarios SET nome = "Marina" WHERE id=4;



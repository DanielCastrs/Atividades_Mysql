/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. */
CREATE DATABASE db_escola;
USE db_escola;

/*Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.*/

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
tel INT,
nota DECIMAL(3,1),
classe VARCHAR(255)
);

/*Insira nesta tabela no mínimo 8 dados (registros).*/

INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("Daniel", 1234, 8, "2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("João", 3456, 5,"2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("Maria", 6755, 7,"2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("José", 1231, 2,"2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("Franscisco", 4456, 4,"2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("Luiza", 2345, 9,"2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("Joaquim", 9076, 2,"2º modulo");
INSERT INTO tb_alunos(nome, tel,nota,classe) VALUES ("Samara", 2237,9,"2º modulo");

/*Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.*/

SELECT * FROM tb_alunos WHERE nota >= 7;

/*Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.*/

SELECT * FROM tb_alunos WHERE nota < 7;

/*Ao término atualize um registro desta tabela através de uma query de atualização.*/

UPDATE tb_alunos SET nota = 7 WHERE id = 4;

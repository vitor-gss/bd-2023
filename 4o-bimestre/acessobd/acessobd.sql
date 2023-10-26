CREATE DATABASE acessobd;
USE acessobd;

CREATE TABLE usuarios(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);

CREATE TABLE telefones(
	FK_id INT,
	telefone VARCHAR(9) NOT NULL,
	FOREIGN KEY (FK_id) REFERENCES usuarios(id),
	PRIMARY KEY (FK_id, telefone)
);

INSERT INTO usuarios(nome, email) VALUES("David", "david.lima@ifal.edu.br");
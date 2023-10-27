CREATE DATABASE compra;
USE compra;

CREATE TABLE usuario(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL
);

CREATE TABLE produto(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DOUBLE NOT NULL
);

CREATE TABLE compra(
    FK_id_usuario INT,
    FK_id_produto INT,
    dt DATE NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (FK_id_usuario) REFERENCES usuario(id),
    FOREIGN KEY (FK_id_produto) REFERENCES produto(id),
    PRIMARY KEY(FK_id_produto, FK_id_usuario)
);
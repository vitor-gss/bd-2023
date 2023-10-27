CREATE DATABASE ExemploRelacionamentos;

USE ExemploRelacionamentos;

-- Tabela para a entidade Endereco (1-1 com Pessoa)
CREATE TABLE Endereco (
  id INT AUTO_INCREMENT PRIMARY KEY,
  logradouro VARCHAR(100),
  cidade VARCHAR(50)
);

-- Tabela para a entidade Telefone (1-N com Pessoa)
CREATE TABLE Telefone (
  id INT AUTO_INCREMENT PRIMARY KEY,
  numero VARCHAR(20),
  pessoa_id INT,
  FOREIGN KEY (pessoa_id) REFERENCES Pessoa(id)
);

-- Tabela para a entidade Pessoa
CREATE TABLE Pessoa (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50),
  endereco_id INT,
  FOREIGN KEY (endereco_id) REFERENCES Endereco(id)
);

-- Tabela para a entidade Projeto (N-M com Pessoa)
CREATE TABLE Projeto (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100)
);

-- Tabela de associação para a relação N-M entre Projeto e Pessoa
CREATE TABLE ProjetoPessoa (
  projeto_id INT,
  pessoa_id INT,
  FOREIGN KEY (projeto_id) REFERENCES Projeto(id),
  FOREIGN KEY (pessoa_id) REFERENCES Pessoa(id)
);

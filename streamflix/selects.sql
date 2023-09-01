CREATE TABLE atorfilme(
	FK_id_filme INT,
    FK_id_ator INT,
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id),
    FOREIGN KEY(FK_id_ator) REFERENCES atores(id),
    PRIMARY KEY(FK_id_filme, FK_id_ator)
);

CREATE TABLE filmes(
	id INT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    classificacao INT NOT NULL,
    lancamento DATE NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE atores(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    bio VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);

select a.nome from atores a join atorfilme af on af.FK_id_ator = a.id join filmes f on f.id = af.FK_id_filme where f.nome = "Matrix";

select a.nome from atores a join atorfilme af on af.FK_id_ator = a.id join filmes f on f.id = af.FK_id_filme where f.nome = "Matrix";
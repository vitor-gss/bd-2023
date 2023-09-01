-- Inserindo dados nas tabelas principais
INSERT INTO usuarios (login, email, nome, nascimento, senha) VALUES
('usuario1', 'usuario1@email.com', 'Usuário 1', '2000-01-01', 'senha123'),
('usuario2', 'usuario2@email.com', 'Usuário 2', '1995-03-15', 'senha456'),
('usuario3', 'usuario3@email.com', 'Usuário 3', '1998-07-22', 'senha789');

INSERT INTO categorias (nome) VALUES
('Ação'),
('Comédia'),
('Drama'),
('Ficção Científica');

INSERT INTO streamings (nome, valor) VALUES
('Netflix', 14.99),
('Amazon Prime Video', 9.99),
('Disney+', 12.99);

INSERT INTO series (nome) VALUES
('Stranger Things'),
('Breaking Bad'),
('Game of Thrones'),
('The Witcher'),
('The Crown'),
('The Mandalorian');

INSERT INTO episodios (temporada, numero, nome, classificacao, lancamento, FK_id_serie) VALUES
(1, 1, 'Capítulo 1', 16, '2020-07-04', 1),
(1, 2, 'Capítulo 2', 16, '2020-07-11', 1),
(2, 1, 'Pilot', 18, '2008-01-20', 4),
(2, 2, 'Cat''s in the Bag...', 18, '2008-01-27', 4),
(1, 3, 'Capítulo 3', 16, '2020-07-18', 4),
(2, 3, '...And the Bag''s in the River', 18, '2008-02-03', 4);

INSERT INTO filmes (nome, classificacao, lancamento) VALUES
('Matrix', 14, '1999-03-31'),
('Titanic', 12, '1997-12-19'),
('Pulp Fiction', 18, '1994-10-14'),
('Jurassic Park', 12, '1993-06-11'),
('Forrest Gump', 12, '1994-07-06'),
('The Shawshank Redemption', 16, '1994-09-23');

INSERT INTO atores (nome, bio) VALUES
('Keanu Reeves', 'Ator famoso por sua atuação em "Matrix".'),
('Leonardo DiCaprio', 'Ator conhecido por seu papel em "Titanic".'),
('John Travolta', 'Ator renomado por "Pulp Fiction".'),
('Henry Cavill', 'Ator principal de "The Witcher".'),
('Olivia Colman', 'Atriz de destaque em "The Crown".'),
('Pedro Pascal', 'Ator principal de "The Mandalorian".');

INSERT INTO diretores (nome, bio) VALUES
('Lana Wachowski', 'Diretora de "Matrix".'),
('James Cameron', 'Diretor de "Titanic".'),
('Quentin Tarantino', 'Diretor de "Pulp Fiction".'),
('Tom Hooper', 'Diretor de "The King''s Speech".'),
('Peter Jackson', 'Diretor de "The Lord of the Rings".'),
('Jon Favreau', 'Diretor de "The Jungle Book".');

-- Inserindo dados nas tabelas de relacionamento
INSERT INTO usuariostreaming (FK_login, FK_id_streaming) VALUES
('usuario1', 1),
('usuario2', 1),
('usuario3', 2);

INSERT INTO usuarioserie (FK_login, FK_id_serie, nota, avalicao) VALUES
('usuario1', 1, 4, 'Ótima série!'),
('usuario2', 2, 5, 'Incrível!'),
('usuario3', 3, 4, 'Muito boa!');

INSERT INTO usuariofilme (FK_login, FK_id_filme, nota, avalicao) VALUES
('usuario1', 1, 4, 'Um clássico!'),
('usuario2', 2, 5, 'Maravilhoso!'),
('usuario3', 3, 4, 'Excelente!');

INSERT INTO streamingserie (FK_id_streaming, FK_id_serie) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO streamingfilme (FK_id_streaming, FK_id_filme) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO categoriaserie (FK_id_categoria, FK_id_serie) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO categoriafilme (FK_id_categoria, FK_id_filme) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO atorfilme (FK_id_filme, FK_id_ator) VALUES
(1, 1),
(2, 2),
(3, 3);

INSERT INTO diretorfilme (FK_id_filme, FK_id_diretor) VALUES
(1, 1),
(2, 2),
(3, 3);

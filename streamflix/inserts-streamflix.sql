-- Inserir dados na tabela 'usuarios'
INSERT INTO usuarios (login, email, nome, nascimento, senha, foto, bio)
VALUES
    ('user1', 'user1@example.com', 'Usuário 1', '1990-01-15', 'senha123', 'user1.jpg', 'Bio do Usuário 1'),
    ('user2', 'user2@example.com', 'Usuário 2', '1985-07-22', 'senha456', 'user2.jpg', 'Bio do Usuário 2'),
    ('user3', 'user3@example.com', 'Usuário 3', '1992-03-10', 'senha789', 'user3.jpg', 'Bio do Usuário 3'),
    ('user4', 'user4@example.com', 'Usuário 4', '1988-12-05', 'senhaabc', 'user4.jpg', 'Bio do Usuário 4'),
    ('user5', 'user5@example.com', 'Usuário 5', '1995-09-20', 'senhadef', 'user5.jpg', 'Bio do Usuário 5'),
    ('user6', 'user6@example.com', 'Usuário 6', '1991-06-08', 'senhaxyz', 'user6.jpg', 'Bio do Usuário 6');

-- Inserir dados na tabela 'categorias'
INSERT INTO categorias (nome)
VALUES
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficção Científica'),
    ('Terror'),
    ('Documentário');

-- Inserir dados na tabela 'streamings'
INSERT INTO streamings (nome, valor)
VALUES
    ('Netflix', 14.99),
    ('Amazon Prime Video', 12.99),
    ('Disney+', 9.99),
    ('HBO Max', 15.99),
    ('Hulu', 11.99),
    ('Apple TV+', 10.99);

-- Inserir dados na tabela 'series'
INSERT INTO series (nome)
VALUES
    ('Série 1'),
    ('Série 2'),
    ('Série 3'),
    ('Série 4'),
    ('Série 5'),
    ('Série 6');

-- Inserir dados na tabela 'preferencias'
INSERT INTO preferencias (FK_login, FK_id)
VALUES
    ('user1', 1),
    ('user1', 2),
    ('user2', 3),
    ('user2', 4),
    ('user3', 5),
    ('user3', 6);

-- Inserir dados na tabela 'episodios'
INSERT INTO episodios (temporada, numero, nome, classificacao, lancamento, FK_id_serie, sinopse)
VALUES
    (1, 1, 'Episódio 1', 8, '2023-01-10', 1, 'Sinopse do Episódio 1'),
    (1, 2, 'Episódio 2', 7, '2023-01-17', 1, 'Sinopse do Episódio 2'),
    (1, 3, 'Episódio 3', 8, '2023-01-24', 1, 'Sinopse do Episódio 3'),
    (2, 1, 'Episódio 1', 7, '2023-02-05', 2, 'Sinopse do Episódio 1'),
    (2, 2, 'Episódio 2', 8, '2023-02-12', 2, 'Sinopse do Episódio 2'),
    (2, 3, 'Episódio 3', 7, '2023-02-19', 2, 'Sinopse do Episódio 3');

-- Inserir dados na tabela 'filmes'
INSERT INTO filmes (nome, classificacao, lancamento, sinopse)
VALUES
    ('Filme 1', 9, '2023-03-15', 'Sinopse do Filme 1'),
    ('Filme 2', 8, '2023-04-20', 'Sinopse do Filme 2'),
    ('Filme 3', 7, '2023-05-25', 'Sinopse do Filme 3'),
    ('Filme 4', 8, '2023-06-30', 'Sinopse do Filme 4'),
    ('Filme 5', 7, '2023-07-10', 'Sinopse do Filme 5'),
    ('Filme 6', 9, '2023-08-05', 'Sinopse do Filme 6');

-- Inserir dados na tabela 'atores'
INSERT INTO atores (nome, bio, foto, dtNasc, dtMorte)
VALUES
    ('Ator 1', 'Bio do Ator 1', 'ator1.jpg', '1980-03-10', NULL),
    ('Ator 2', 'Bio do Ator 2', 'ator2.jpg', '1975-06-15', NULL),
    ('Ator 3', 'Bio do Ator 3', 'ator3.jpg', '1982-09-20', NULL);

-- Inserir dados na tabela 'diretores'
INSERT INTO diretores (nome, bio)
VALUES
    ('Diretor 1', 'Bio do Diretor 1'),
    ('Diretor 2', 'Bio do Diretor 2'),
    ('Diretor 3', 'Bio do Diretor 3');

-- Inserir dados na tabela 'amizades'
INSERT INTO amizades (FK_login1, FK_login2)
VALUES
    ('user1', 'user2'),
    ('user1', 'user3'),
    ('user2', 'user3');

-- Inserir dados na tabela 'usuariostreaming'
INSERT INTO usuariostreaming (FK_login, FK_id_streaming)
VALUES
    ('user1', 1),
    ('user2', 2),
    ('user3', 3);

-- Inserir dados na tabela 'usuarioserie'
INSERT INTO usuarioserie (FK_login, FK_id_serie, nota, avalicao, dtComentario, likes, deslikes)
VALUES
    ('user1', 1, 5, 'Boa série!', '2023-01-15', 10, 2),
    ('user1', 2, 4, 'Gostei, mas poderia ser melhor', '2023-02-10', 8, 3),
    ('user2', 3, 5, 'Excelente série!', '2023-03-20', 12, 1);

-- Inserir dados na tabela 'usuariofilme'
INSERT INTO usuariofilme (FK_login, FK_id_filme, nota, avalicao, dtComentario, likes, deslikes)
VALUES
    ('user1', 4, 4, 'Bom filme', '2023-04-05', 5, 1),
    ('user2', 5, 3, 'Interessante', '2023-05-10', 4, 2),
    ('user3', 6, 5, 'Muito bom!', '2023-06-15', 7, 0);

-- Inserir dados na tabela 'favatores'
INSERT INTO favatores (FK_id, FK_login)
VALUES
    (1, 'user1'),
    (2, 'user2'),
    (3, 'user3');

-- Inserir dados na tabela 'streamingserie'
INSERT INTO streamingserie (FK_id_streaming, FK_id_serie)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Inserir dados na tabela 'streamingfilme'
INSERT INTO streamingfilme (FK_id_streaming, FK_id_filme)
VALUES
    (1, 4),
    (2, 5),
    (3, 6);

-- Inserir dados na tabela 'categoriaserie'
INSERT INTO categoriaserie (FK_id_categoria, FK_id_serie)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Inserir dados na tabela 'categoriafilme'
INSERT INTO categoriafilme (FK_id_categoria, FK_id_filme)
VALUES
    (4, 4),
    (5, 5),
    (6, 6);

-- Inserir dados na tabela 'favserie'
INSERT INTO favserie (FK_id_serie, FK_login)
VALUES
    (1, 'user1'),
    (2, 'user2'),
    (3, 'user3');

-- Inserir dados na tabela 'favfilme'
INSERT INTO favfilme (FK_id_filme, FK_login)
VALUES
    (4, 'user1'),
    (5, 'user2'),
    (6, 'user3');

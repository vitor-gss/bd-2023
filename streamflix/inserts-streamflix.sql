-- Inserir dados na tabela 'usuarios'
INSERT INTO usuarios (login, email, nome, nascimento, senha, foto, bio)
VALUES
    ('user1', 'user1@email.com', 'Usuário 1', '1990-01-01', 'senha123', 'foto1.jpg', 'Bio do Usuário 1'),
    ('user2', 'user2@email.com', 'Usuário 2', '1995-02-15', 'senha456', 'foto2.jpg', 'Bio do Usuário 2'),
    ('user3', 'user3@email.com', 'Usuário 3', '1988-06-10', 'senha789', 'foto3.jpg', 'Bio do Usuário 3'),
    ('user4', 'user4@email.com', 'Usuário 4', '1992-11-20', 'senhaabc', 'foto4.jpg', 'Bio do Usuário 4'),
    ('user5', 'user5@email.com', 'Usuário 5', '1998-03-25', 'senhadef', 'foto5.jpg', 'Bio do Usuário 5'),
    ('user6', 'user6@email.com', 'Usuário 6', '1994-09-30', 'senhaghi', 'foto6.jpg', 'Bio do Usuário 6');

-- Inserir dados na tabela 'categorias'
INSERT INTO categorias (nome)
VALUES
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficção Científica'),
    ('Terror'),
    ('Romance');

-- Inserir dados na tabela 'streamings'
INSERT INTO streamings (nome, valor)
VALUES
    ('Netflix', 19.99),
    ('Amazon Prime Video', 12.99),
    ('Disney+', 14.99),
    ('HBO Max', 16.99),
    ('Hulu', 11.99),
    ('Apple TV+', 9.99);

-- Inserir dados na tabela 'series'
INSERT INTO series (nome)
VALUES
    ('Stranger Things'),
    ('Friends'),
    ('Breaking Bad'),
    ('Black Mirror'),
    ('The Walking Dead'),
    ('Game of Thrones');

-- Inserir dados na tabela 'filmes'
INSERT INTO filmes (nome, classificacao, lancamento, sinopse)
VALUES
    ('Matrix', 14, '1999-03-31', 'Sinopse de Matrix'),
    ('Forrest Gump', 12, '1994-07-06', 'Sinopse de Forrest Gump'),
    ('Pulp Fiction', 18, '1994-10-14', 'Sinopse de Pulp Fiction'),
    ('O Senhor dos Anéis: A Sociedade do Anel', 12, '2001-12-19', 'Sinopse de O Senhor dos Anéis: A Sociedade do Anel'),
    ('O Iluminado', 18, '1980-05-23', 'Sinopse de O Iluminado'),
    ('Titanic', 14, '1997-12-19', 'Sinopse de Titanic');

-- Inserir dados na tabela 'atores'
INSERT INTO atores (nome, bio, foto, dtNasc, dtMorte)
VALUES
    ('Keanu Reeves', 'Bio de Keanu Reeves', 'foto_keanu.jpg', '1964-09-02', NULL),
    ('Tom Hanks', 'Bio de Tom Hanks', 'foto_tom.jpg', '1956-07-09', NULL),
    ('John Travolta', 'Bio de John Travolta', 'foto_john.jpg', '1954-02-18', NULL),
    ('Elijah Wood', 'Bio de Elijah Wood', 'foto_elijah.jpg', '1981-01-28', NULL),
    ('Jack Nicholson', 'Bio de Jack Nicholson', 'foto_jack.jpg', '1937-04-22', NULL),
    ('Leonardo DiCaprio', 'Bio de Leonardo DiCaprio', 'foto_leo.jpg', '1974-11-11', NULL);

-- Inserir dados na tabela 'diretores'
INSERT INTO diretores (nome, bio)
VALUES
    ('Christopher Nolan', 'Bio de Christopher Nolan'),
    ('Steven Spielberg', 'Bio de Steven Spielberg'),
    ('Quentin Tarantino', 'Bio de Quentin Tarantino'),
    ('Peter Jackson', 'Bio de Peter Jackson'),
    ('Stanley Kubrick', 'Bio de Stanley Kubrick'),
    ('Martin Scorsese', 'Bio de Martin Scorsese');

-- Inserir dados na tabela 'preferencias'
INSERT INTO preferencias (FK_login, FK_id)
VALUES
    ('user1', 1),
    ('user1', 2),
    ('user2', 2),
    ('user3', 3),
    ('user3', 4),
    ('user4', 1);

-- Inserir dados na tabela 'favoritos'
INSERT INTO favoritos (FK_login1, FK_login2)
VALUES
    ('user1', 'user2'),
    ('user1', 'user3'),
    ('user2', 'user4');

-- Inserir dados na tabela 'usuariostreaming'
INSERT INTO usuariostreaming (FK_login, FK_id_streaming)
VALUES
    ('user1', 1),
    ('user2', 1),
    ('user3', 2);

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
    (1, 2),
    (2, 3);

-- Inserir dados na tabela 'streamingfilme'
INSERT INTO streamingfilme (FK_id_streaming, FK_id_filme)
VALUES
    (1, 4),
    (1, 5),
    (2, 6);

-- Inserir dados na tabela 'atorfilme'
INSERT INTO atorfilme (FK_id_filme, FK_id_ator)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Inserir dados na tabela 'diretorfilme'
INSERT INTO diretorfilme (FK_id_filme, FK_id_diretor)
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

-- Inserir dados na tabela 'atorepisodio'
INSERT INTO atorepisodio (FK_id_ator, FK_id_serie, FK_temporada, FK_numero)
VALUES
    (1, 1, 1, 1),
    (2, 2, 1, 1),
    (3, 3, 1, 1);

-- Inserir dados na tabela 'diretorepisodio'
INSERT INTO diretorepisodio (FK_id_diretor, FK_id_serie, FK_temporada, FK_numero)
VALUES
    (1, 1, 1, 1),
    (2, 2, 1, 1),
    (3, 3, 1, 1);

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

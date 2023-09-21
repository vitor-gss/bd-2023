CREATE DATABASE streamflix;
USE streamflix;

CREATE TABLE usuarios(
	login VARCHAR(50),
    email VARCHAR(50) UNIQUE,
    nome VARCHAR(50) NOT NULL,
    nascimento DATE NOT NULL,
    senha VARCHAR(50) NOT NULL,
    foto VARCHAR(100),
    bio VARCHAR(500),
    PRIMARY KEY(login)
);

CREATE TABLE categorias(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE streamings(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DOUBLE NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE series(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    foto VARCHAR(100),
    PRIMARY KEY(id)
);

CREATE TABLE preferencias(
	FK_login VARCHAR(50),
	FK_id INT,
	PRIMARY KEY(FK_login, FK_id),
	FOREIGN KEY (FK_login) REFERENCES usuarios(login),
	FOREIGN KEY(FK_id) REFERENCES categorias(id)
);

CREATE TABLE favusuario(
	FK_login1 VARCHAR(50),
	FK_login2 VARCHAR(50),
	FOREIGN KEY(FK_login1) REFERENCES usuarios(login),
	FOREIGN KEY(FK_login2) REFERENCES usuarios(login),
	PRIMARY KEY(FK_login1, FK_login2)
);

CREATE TABLE episodios(
	temporada INT NOT NULL,
    numero INT NOT NULL,
    nome VARCHAR(50) NOT NULL,
    classificacao INT NOT NULL,
    lancamento DATE NOT NULL,
    FK_id_serie INT,
    sinopse VARCHAR(500),
    FOREIGN KEY(FK_id_serie) REFERENCES series(id),
    PRIMARY KEY(FK_id_serie,temporada,numero)
);

CREATE TABLE filmes(
	id INT AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    classificacao INT NOT NULL,
    lancamento DATE NOT NULL,
    foto VARCHAR(100),
    sinopse VARCHAR(500),
    PRIMARY KEY(id)
);

CREATE TABLE atores(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    bio VARCHAR(500) NOT NULL,
    foto varchar(100),
    dtNasc DATE NOT NULL,
    dtMorte DATE,
    PRIMARY KEY(id)
);

CREATE TABLE diretores(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    bio VARCHAR(500) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE amizades(
	FK_login1 VARCHAR(50),
    FK_login2 VARCHAR(50),
    FOREIGN KEY(FK_login1) REFERENCES usuarios(login),
    FOREIGN KEY(FK_login2) REFERENCES usuarios(login),
    PRIMARY KEY(FK_login1, FK_login2)
);

CREATE TABLE usuariostreaming(
	FK_login VARCHAR(50),
    FK_id_streaming INT,
    FOREIGN KEY(FK_login) REFERENCES usuarios(login),
    FOREIGN KEY(FK_id_streaming) REFERENCES streamings(id),
    PRIMARY KEY(FK_login, FK_id_streaming)
);

CREATE TABLE usuarioserie(
	FK_login VARCHAR(50),
    FK_id_serie INT,
    nota INT,
    avalicao VARCHAR(250),
    dtComentario DATE NOT NULL,
	likes INT DEFAULT 0,
    deslikes INT DEFAULT 0,
    FOREIGN KEY(FK_login) REFERENCES usuarios(login),
    FOREIGN KEY(FK_id_serie) REFERENCES series(id),
    PRIMARY KEY(FK_login, FK_id_serie)
);

CREATE TABLE usuariofilme(
	FK_login VARCHAR(50),
    FK_id_filme INT,
    nota INT,
    avalicao VARCHAR(250),
    dtComentario DATE NOT NULL,
    likes INT DEFAULT 0,
    deslikes INT DEFAULT 0,
    FOREIGN KEY(FK_login) REFERENCES usuarios(login),
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id),
    PRIMARY KEY(FK_login, FK_id_filme)
);

CREATE TABLE favatores(
	FK_id INT,
	FK_login VARCHAR(50),
	PRIMARY KEY(FK_id, FK_login),
	FOREIGN KEY(FK_id) REFERENCES atores(id),
	FOREIGN KEY(FK_login) REFERENCES usuarios(login)
);

CREATE TABLE streamingserie(
	FK_id_streaming INT,
    FK_id_serie INT,
    FOREIGN KEY(FK_id_streaming) REFERENCES streamings(id),
    FOREIGN KEY(FK_id_serie) REFERENCES series(id),
    PRIMARY KEY(FK_id_streaming, FK_id_serie)
);

CREATE TABLE streamingfilme(
	FK_id_streaming INT,
    FK_id_filme INT,
    FOREIGN KEY(FK_id_streaming) REFERENCES streamings(id),
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id),
    PRIMARY KEY(FK_id_streaming, FK_id_filme)
);

CREATE TABLE categoriaserie(
	FK_id_categoria INT,
    FK_id_serie INT,
    FOREIGN KEY(FK_id_categoria) REFERENCES categorias(id),
    FOREIGN KEY(FK_id_serie) REFERENCES series(id),
    PRIMARY KEY(FK_id_categoria, FK_id_serie)
);

CREATE TABLE categoriafilme(
	FK_id_categoria INT,
    FK_id_filme INT,
    FOREIGN KEY(FK_id_categoria) REFERENCES categorias(id),
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id),
    PRIMARY KEY(FK_id_categoria, FK_id_filme)
);

CREATE TABLE atorepisodio(
	FK_id_ator INT,
    FK_id_serie INT,
    FK_temporada INT,
    FK_numero INT,
    FOREIGN KEY(FK_id_ator) REFERENCES atores(id),
    FOREIGN KEY(FK_id_serie, FK_temporada, FK_numero) REFERENCES episodios(FK_id_serie, temporada, numero),
    PRIMARY KEY(FK_id_ator, FK_id_serie, FK_temporada, FK_numero)
);

CREATE TABLE diretorepisodio(
	FK_id_diretor INT,
    FK_id_serie INT,
    FK_temporada INT,
    FK_numero INT,
    FOREIGN KEY(FK_id_diretor) REFERENCES diretores(id),
    FOREIGN KEY(FK_id_serie, FK_temporada, FK_numero) REFERENCES episodios(FK_id_serie, temporada, numero),
    PRIMARY KEY(FK_id_diretor, FK_id_serie, FK_temporada, FK_numero)
);

CREATE TABLE atorfilme(
	FK_id_filme INT,
    FK_id_ator INT,
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id),
    FOREIGN KEY(FK_id_ator) REFERENCES atores(id),
    PRIMARY KEY(FK_id_filme, FK_id_ator)
);

CREATE TABLE diretorfilme(
	FK_id_filme INT,
    FK_id_diretor INT,
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id),
    FOREIGN KEY(FK_id_diretor) REFERENCES diretores(id),
    PRIMARY KEY(FK_id_filme, FK_id_diretor)
);

CREATE TABLE pesquisas(
	id INT AUTO_INCREMENT PRIMARY KEY,
	busca VARCHAR(100) NOT NULL,
	FK_login VARCHAR(50),
	FOREIGN KEY(FK_login) REFERENCES usuarios(login)
);

CREATE TABLE favserie(
	FK_id_serie INT,
    FK_login VARCHAR(50),
    PRIMARY KEY(FK_login, FK_id_serie),
    FOREIGN KEY(FK_login) REFERENCES usuarios(login),
    FOREIGN KEY(FK_id_serie) REFERENCES series(id)
);

CREATE TABLE favfilme(
	FK_id_filme INT,
    FK_login VARCHAR(50),
    PRIMARY KEY(FK_login, FK_id_filme),
    FOREIGN KEY(FK_login) REFERENCES usuarios(login),
    FOREIGN KEY(FK_id_filme) REFERENCES filmes(id)
);

CREATE TABLE notificacao(
	FK_login VARCHAR(50),
    id INT AUTO_INCREMENT,
    texto VARCHAR(200),
    img VARCHAR(100),
    PRIMARY KEY(id),
    FOREIGN KEY(FK_login) REFERENCES usuarios(login)
);

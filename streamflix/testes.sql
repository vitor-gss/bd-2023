alter table atores add foto varchar(50); 
alter table atores add dataNascimento varchar(10); 
alter table atores add dataMorte varchar(10); 
alter table atores add favorito bool; 

create table historico(
	busca text,
    id int auto_increment,
    fk_login varchar(50),
    foreign key (fk_login) references usuarios (login),
    primary key(id)
);

create table personagemAtorFilme(
	nomePersonagem varchar(50),
    fk_filme int,
    fk_ator int,
    id int auto_increment,
    foreign key (fk_filme) references filmes (id),
    foreign key (fk_ator) references atores (id),
    primary key (id)
);

alter table usuarioserie add data date;
alter table usuariofilme add data date;
alter table usuariofilme add isLike bool;
alter table usuariofilme add isDeslike bool;
alter table usuarioserie add isDeslike bool;
alter table usuarioserie add isDeslike bool;
# sinopse
alter table filmes add sinopse varchar(250);
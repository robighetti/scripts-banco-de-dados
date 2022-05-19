--inser de autores
insert into acervos.autores (nome, bio, telefone) values ('Autor 1', 'Teste de autor 1', '19999828057')
insert into acervos.autores (nome, bio, telefone) values ('Autor 2', 'Teste de autor 2', '19999988855')
insert into acervos.autores (nome, bio, telefone) values ('Autor 3', 'Teste de autor 3', '19999828057')

--insert de generos
insert into acervos.generos (descricao) values ('terror')
insert into acervos.generos (descricao) values ('comedia')
insert into acervos.generos (descricao) values ('policial')


--insert de livros
insert into acervos.livros (titulo, capitulos, id_autor, id_genero) values ('Titulo 1', '10 capitulos', 2, 3)
insert into acervos.livros (titulo, capitulos, id_autor, id_genero) values ('Titulo 2', '15 capitulos', 1, 1)
insert into acervos.livros (titulo, capitulos, id_autor, id_genero) values ('Titulo 3', '20 capitulos', 3, 2)
insert into acervos.livros (titulo, capitulos, id_autor, id_genero) values ('Titulo 4', '3 capitulos', 1, 1)
insert into acervos.livros (titulo, capitulos, id_autor, id_genero) values ('Titulo 5', '31 capitulos', 2, 2)
insert into acervos.livros (titulo, capitulos, id_autor, id_genero) values ('Titulo 6', '5 capitulos', 3, 3)

--insert de acervos
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 1', '1999999999', 6, 'Allysin')
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 1', '1999999999', 3, 'Allysin')
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 1', '1999999999', 2, 'Allysin')

insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 2', '1999999999', 1, 'Ingrid')
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 2', '1999999999', 4, 'Ingrid')
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 2', '1999999999', 5, 'Ingrid')

insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 3', '1999999999', 1, 'Duda')
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 3', '1999999999', 5, 'Duda')
insert into acervos.acervos (endereco, telefone, id_livro, nome) values ('Endereço 3', '1999999999', 3, 'Duda')

--ESTUDO DE SELECTS
select * from acervos.generos g 
where 
	descricao = 'comedia'
	
select * from acervos.autores 
where
	nome = 'Autor 1'
	
select 
	li.id 			as id_livro,
	li.titulo 		as titulo_livro,
	li.capitulos 	as capitulos_livro,
	aut.nome 		as nome_autor,
	aut.bio 		as bio_autor,
	aut.telefone 	as telefone_autor,
	gen.descricao 	as genero_livro,
	ace.nome 		as acervo_nome,
	ace.telefone 	as acervo_fone,
	ace.endereco  	as acervo_endereco
from acervos.livros li
inner join acervos.autores aut on (aut.id = li.id_autor)
inner join acervos.generos gen on (gen.id = li.id_genero)
inner join acervos.acervos ace on (ace.id_livro = li.id)
where
	ace.nome = 'Duda'
	and gen.descricao = 'comedia'
	





	
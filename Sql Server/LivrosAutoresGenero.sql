--COMANDO - Criar Banco de Dados
--ddl -LlINGUAGEM DE DEFINIÇÃO DE DADOS
CREATE DATABASE RoteiroLivros3;

--Usar o Banco RoteiroLivros
USE RoteiroLivros3;

--Criar tabela
--IDENTITY - AUTO INCREMENTO = 1,2,3,4,5
CREATE TABLE Generos(
	IdGenero INT PRIMARY KEY,
	Nome	 VARCHAR (200) NOT NULL
);

CREATE TABLE Autores(
	IdAutor     INT PRIMARY KEY,
	NomeAutores VARCHAR (200)
);

--DROP DATABASE Autores;

CREATE TABLE Livros(
	IdLivro  INT PRIMARY KEY,
	Titulo	 VARCHAR (255),
	IdGenero INT FOREIGN KEY REFERENCES Generos(IdGenero),
	IdAutor  INT FOREIGN KEY REFERENCES Autores(IdAutor)

);

INSERT INTO Generos(IdGenero, Nome)
VALUES(1,'Romance'),
	   (2, 'Comedia'),
	   (3, 'Ficcao'),
	   (4, 'Açao'),
	   (5, 'Drama');


INSERT INTO Autores(NomeAutores, IdAutor)
VALUES('Joao',1 ),
	  ('Zeca',2 ),
	  ('Afonso',3 ),
	  ('Zequinha',4 ),
	  ('Amilton',5 );

--Inserir nomes
INSERT INTO Livros(Titulo,IdAutor, IdGenero, IdLivro)
VALUES('LIVRO X', 1 ,1 , 1),
	  ('LIVRO Y', 2, 2, 2),
	  ('LIVRO Z', 3, 3, 3),
	  ('LIVRO I', 4, 4, 4),
	  ('LIVRO J', 5, 5, 5);

--Alterar nome de um gênero
UPDATE Generos
SET Nome = 'Terror'
WHERE IdGenero =1;

--TROCAR GENERO - LIVRO X - A CABANA
UPDATE Livros
SET Titulo = 'A CABANA'
WHERE IdLivro = 1;

--APAGANDO O AUTOR
DELETE FROM Livros
WHERE IdAutor = 2;

--Apaga o Autor 2
DELETE FROM Autores
WHERE IdAutor = 2;

--DQL - COMANDO DE CONSULTA
SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;


--APAGA TODOS OS DADOS DA TABELA
--TRUNCATE TABLE Artistas;
--DDL - LINGUAGEM DE DEFINIÇÃO DE DADOS
CREATE DATABASE LIVROS;
go

USE LIVROS;
go

CREATE TABLE Generos(
	IdGenero INT PRIMARY KEY IDENTITY,
	NomeGenero VARCHAR(200) NOT NULL
);
go

CREATE TABLE Autores(
	IdAutor INT PRIMARY KEY IDENTITY,
	NomeAutor VARCHAR(200) NOT NULL
);
go

CREATE TABLE Livros(
	IdLivro INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(200) NOT NULL,
	IdGenero INT FOREIGN KEY REFERENCES Generos(IdGenero),
	IdAutor INT FOREIGN KEY REFERENCES Autores(IdAutor)
);
go

--DML - LINGUAGEM DE MANIPULAÇÃO DE DADOS
INSERT INTO Generos VALUES ('Romance'),
						   ('Comédia'),
						   ('Suspense'),
						   ('Terror'),
						   ('Administracao');

INSERT INTO Autores VALUES('Autor A'),
						  ('Autor B'),
						  ('Autor C'),
						  ('Autor D'),
						  ('Autor E');

INSERT INTO Livros VALUES ('Titulo A',1,1),
						  ('Titulo B',2,2),
						  ('Titulo C',3,3),
						  ('Titulo D',4,4),
						  ('Titulo E',5,5);


--DML - LINGUAGEM DE MANIPULAÇAO DE DADOS
--Alterar nome de um gênero | ROMANCE por MATEMATICA
UPDATE Generos
SET NomeGenero = 'Matematica'
WHERE IdGenero = 1;

--Alterar o nome de um livro | TITULO A por A CABANA
UPDATE Livros
SET Titulo = 'A Cabana'
WHERE IdLivro = 1;

--Apagando o Autor | Titulo B
DELETE FROM Livros
WHERE IdAutor = 2;

--Apagando o Autor | Autor B
DELETE FROM Autores
WHERE IdAutor = 2;

--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS AUTORES
SELECT L.Titulo, A.NomeAutor
FROM Livros L INNER JOIN Autores A
ON L.IdAutor = A.IdAutor

--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS GÊNEROS
SELECT L.Titulo, G.NomeGenero
FROM Livros L INNER JOIN Generos G
ON L.IdGenero = G.IdGenero;

--SELECIONAR TODOS OS LIVROS E SEUS RESPECTIVOS AUTORES E GENEROS
SELECT L.Titulo, A.NomeAutor,G.NomeGenero
FROM Livros L INNER JOIN Autores A ON L.IdAutor = A.IdAutor
INNER JOIN Generos G ON G.IdGenero = L.IdGenero;

--DQL - LINGUAGEM DE CONSULTA DE DADOS
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;



--APAGAR TABELAS
DROP TABLE Livros;
DROP TABLE Autores;
DROP TABLE Generos;
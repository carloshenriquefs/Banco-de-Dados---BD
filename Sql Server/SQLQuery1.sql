--COMANDO - Criar Banco de Dados
--ddl -LlINGUAGEM DE DEFINIÇÃO DE DADOS
--CREATE DATABASE RoteiroLivros;

--Usar o Banco RoteiroLivros
USE RoteiroLivros;

--Criar tabela
--IDENTITY - AUTO INCREMENTO = 1,2,3,4,5
CREATE TABLE Generos(
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome	 VARCHAR (200) NOT NULL
);

CREATE TABLE Autores(
	IdAutor     INT PRIMARY KEY IDENTITY,
	NomeAutores VARCHAR (200)
);

CREATE TABLE Livros(
	IdLivro  INT PRIMARY KEY IDENTITY,
	Titulo	 VARCHAR (255),
	IdGenero INT FOREIGN KEY REFERENCES Generos(IdGenero),
	IdAutor  INT FOREIGN KEY REFERENCES Autores(IdAutor)

);


--DQL - COMANDO DE CONSULTA
SELECT * FROM Autores;
SELECT * FROM Generos;
SELECT * FROM Livros;
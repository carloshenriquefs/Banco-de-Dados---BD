CREATE DATABASE Filmes;

USE Filmes;

CREATE TABLE Genero(
	IdGenero INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(255) UNIQUE NOT NULL,


);


CREATE TABLE Filmes(
	IdFilme  INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(255) UNIQUE NOT NULL,
	IdGenero INT FOREIGN KEY REFERENCES Genero(IdGenero)
);

INSERT INTO Genero VALUES('Ação'),
						 ('Drama');

INSERT INTO Filmes VALUES('Rambo',1),
						('O Dramatico',2);

SELECT F.Titulo,G.Nome
FROM Genero G INNER JOIN Filmes F ON G.IdGenero = F.IdGenero

SELECT * FROM Filmes
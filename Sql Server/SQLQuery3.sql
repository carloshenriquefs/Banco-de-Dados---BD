--DDL LINGUAGEM DE MODELAÇÃO DE DADOS
CREATE DATABASE Musicalmanha;

USE Musicalmanha;

CREATE TABLE EstilosMusicais(
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL
);

CREATE TABLE Artistas(
	IdArtistas INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais(IdEstiloMusical)

);

ALTER TABLE EstilosMusicais
ADD Descricao VARCHAR(200);

--EXCLUIR BANCO DE DADOS
--DROP DATABASE Musicalmanha;

SELECT * FROM EstilosMusicais;

-- DML - LINGUAGEM DE MANIPULAÇAO DE DADOS
--COMANDO DE INSERÇÃO DE DADOS

INSERT INTO EstilosMusicais(Nome, Descricao)
VALUES ('MPB','ANTIGO'),
		('ELETRONICA', 'ENERGETICO');

INSERT INTO Artistas(Nome,IdEstiloMusical)
VALUES('Timaia',1),
		('Menson', 3);

--VISUALIZAR TABELA
SELECT *FROM EstilosMusicais;

SELECT * FROM Artistas;

--UPDATE ALTERAR DADOS DE DENTRO DAS TABELAS

UPDATE Artistas
SET Nome = 'Alcione'
WHERE IdArtistas = 1;

UPDATE Artistas
SET IdEstiloMusical = 1
WHERE IdArtistas =  3;

UPDATE Artistas
SET IdEstiloMusical = 2
WHERE IdArtistas = 3;


--DELETE APAGAR DADOS DA TABELA
DELETE FROM Artistas
WHERE IdArtistas = 3;

SELECT * FROM Artistas;

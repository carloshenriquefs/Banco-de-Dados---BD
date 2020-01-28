CREATE DATABASE Musicalmanha;

USE Musicalmanha;

CREATE TABLE EstilosMusicais(
	IdEstiloMusical INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(200) NOT NULL
);

CREATE TABLE Artistas(
	IdArtistas INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (200),
	IdEstiloMusical INT FOREIGN KEY REFERENCES EstilosMusicais(IdEstiloMusical),

);

SELECT * FROM EstilosMusicais;
SELECT * FROM Artistas;

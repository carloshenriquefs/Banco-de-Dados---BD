CREATE DATABASE Optusmanha;

USE Optusmanha;

CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(200) NOT NULL
);

CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250)
);

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250) NOT NULL,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario)
);

CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250) NOT NULL
);

CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(250) NOT NULL,
	DataLancamento DATE,
	QtdMinutos DATETIME,
	Visualizacao BINARY,
	IdArtista INT FOREIGN KEY REFERENCES Artistas(IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);

INSERT INTO TipoUsuario(IdTipoUsuario,Titulo)
VALUES('Maria'),
	  ('Madson'),
	  ('Merlin'),
	  ('Maldonado'),
	  ('Moreira');

INSERT INTO Artistas(IdArtista, Nome)
VALUES('Alex'),
	  ('Aline'),
	  ('Aroldo'),
	  ('Arlindo'),
	  ('Array');

INSERT INTO Usuarios(IdUsuario, Nome,IdTipoUsuario)
VALUES('Roldan'),
	  ('Roberto'),
	  ('Ricardo'),
	  ('Rosan'),
	  ('Rodeiro');

INSERT INTO Estilo(IdEstilo, Nome)
VALUES('Rock'),
		('Jazz'),
		('Sertaneijo'),
		('Ragg'),
		('Eletronica');

INSERT INTO Album( Nome, DataLancamento,QtdMinutos,Visualizacao,IdArtista,IdEstilo)
VALUES('Madeira','28/03/2019','23',

SELECT * FROM TipoUsuario;
SELECT * FROM Artistas;
SELECT * FROM Usuarios;
SELECT * FROM Estilo;
SELECT * FROM Album;
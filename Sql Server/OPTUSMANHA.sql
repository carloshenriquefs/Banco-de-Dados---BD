CREATE DATABASE OPTUSMANHA2;

USE OPTUSMANHA2;

CREATE TABLE TipoUsuario(
	IdTipoUsuario INT PRIMARY KEY,
	Titulo VARCHAR(200) NOT NULL
);

CREATE TABLE Artistas(
	IdArtista INT PRIMARY KEY,
	Nome VARCHAR(250)
);

CREATE TABLE Usuarios(
	IdUsuario INT PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL,
	Email VARCHAR (200) NOT NULL,
	Senha INT NOT NULL
);

CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL
);

CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY,
	Nome VARCHAR(250) NOT NULL,
	DataLancamento DATE,
	Localizacao VARCHAR(200),
	QtdMinutos BIGINT,
	Visualizacao BINARY,
	IdArtista INT FOREIGN KEY REFERENCES Artistas(IdArtista),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);

INSERT INTO TipoUsuario(IdTipoUsuario, Titulo)
VALUES(2,'Rocha'),
	  (3,'Amilton'),
	  (4,'Cesar'),
	  (5,'Rogerio');

INSERT INTO Artistas(IdArtista, Nome)
VALUES(1,'Mario'),
	  (2,'Paulo'),
	  (3,'Bruno'),
	  (4,'Eduardo'),
	  (5,'Gabriel');

INSERT INTO Usuarios(IdUsuario, Nome,Email,Senha)
VALUES(1, 'Alexandre','Alexandre20@gmail.com',1234),
	  (2,'Felipe','Felipe19@email.com', 2345),
	  (3,'Jorge', 'Jorge210@gmail.com', 23445),
	  (4,'Castro','CastroM@gmail.com',32425),
	  (5,'Matheus','Matheus@gmail.com',252526);

INSERT INTO Estilo(IdEstilo, Nome)
VALUES(1,'Romance'),
	  (2, 'Ficcao'),
	  (3, 'Comedia'),
	  (4, 'Acao'),
	  (5, 'Drama');

INSERT INTO Album(IdAlbum, Nome, DataLancamento,Localizacao,QtdMinutos,IdArtista,IdEstilo)
VALUES(1,'Merlin', GETDATE(), 'RN',12,1,1),
	  (2,'Rocha',GETDATE(),'SP',23,2,2),
	  (3,'Amilton',GETDATE(),'MG',33,3,3),
	  (4,'Cesar',GETDATE(), 'RS',25,4,4),
	  (5,'Rogerio', GETDATE(),'SC', 14,5,5);


--Alterar nome do artista | de MARIO para Gabriela
UPDATE Artistas
SET Nome = 'Gabriela'
WHERE IdArtista = 1;

--Alterar nome do usuario | de Alexandre para Roger
UPDATE Usuarios 
SET Nome = 'Roger'
WHERE IdUsuario = 1;

UPDATE Usuarios
SET Email = 'Roger202@gmail.com'
WHERE IdUsuario = 1;
----------------------------------------------------
--Deletar o dado da tabela
DELETE FROM Album
WHERE IdAlbum = 1;

TRUNCATE TABLE Usuarios;
DROP TABLE Usuarios;


SELECT * FROM TipoUsuario;
SELECT * FROM Artistas;
SELECT * FROM Usuarios;
SELECT * FROM Estilo;
SELECT * FROM Album;
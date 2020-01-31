CREATE DATABASE OPTUSMANHA3;

USE OPTUSMANHA3;

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
	Senha INT NOT NULL,
	Id_TipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario(IdTipoUsuario)
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
	Id_Artista INT FOREIGN KEY REFERENCES Artistas(IdArtista),
	Id_Estilo INT FOREIGN KEY REFERENCES Estilo(IdEstilo)
);

--Inserir 5 valores na TABELA
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

INSERT INTO Usuarios(IdUsuario, Nome,Email,Senha,Id_TipoUsuario)
VALUES(1, 'Alexandre','Alexandre20@gmail.com',1234,1),
	  (2,'Felipe','Felipe19@email.com', 2345,2),
	  (3,'Jorge', 'Jorge210@gmail.com', 23445,3),
	  (4,'Castro','CastroM@gmail.com',32425,4),
	  (5,'Matheus','Matheus@gmail.com',252526,5);

INSERT INTO Estilo(IdEstilo, Nome)
VALUES(1,'Romance'),
	  (2, 'Ficcao'),
	  (3, 'Comedia'),
	  (4, 'Acao'),
	  (5, 'Drama');

INSERT INTO Album(IdAlbum, Nome, DataLancamento,Localizacao,QtdMinutos,Id_Artista,Id_Estilo)
VALUES(1,'Album1', GETDATE(), 'RN',12,1,1),
	  (2,'Album2',GETDATE(),'SP',23,2,2),
	  (3,'Album3',GETDATE(),'MG',33,3,3),
	  (4,'Album4',GETDATE(), 'RS',25,4,4),
	  (5,'Album5', GETDATE(),'SC',14,1,5);
	  

DROP TABLE TipoUsuario;
DROP TABLE Artistas;
DROP TABLE Usuarios;
DROP TABLE Estilo;
DROP TABLE Album;

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
--Alterar mais de uma [COLUNA]
UPDATE Usuarios
SET Email = 'Ronaldo@gmail.com',
Senha = 242424
WHERE IdUsuario = 1;
----------------------------------------------------
--Alterar mais de uma [LINHA]


----------------------------------------------------
--Deletar o dado da tabela
DELETE FROM Album
WHERE IdAlbum = 1;
----------------------------------------------------
--Apagando [LINHAS]
DELETE TipoUsuario WHERE IdTipoUsuario > '2'
----------------------------------------------------
--Apagando [COLUNAS]

----------------------------------------------------
TRUNCATE TABLE Usuarios;
DROP TABLE Usuarios;

--DQL - LINGUAGEM DE CONSULTA DE DADOS
SELECT * FROM TipoUsuario;
SELECT * FROM Artistas;
SELECT * FROM Usuarios;
SELECT * FROM Estilo;
SELECT * FROM Album;
--SELECT * FROM All;
--SELECT * FROM Artistas,Albuns;

--Operações < > = 
--sELECIONAR DE ALBUNS TODOS OS ARTISTAS DE ID IGUAL A 1
SELECT * FROM Usuarios WHERE IdUsuario = 1;

--SELECIONAR DE ALBUNS TODOS MAIORES QUE 1
SELECT * FROM Usuarios WHERE IdUsuario > 1;

--OR OU

SELECT Nome, QtdMinutos FROM Album
WHERE (DataLancamento IS NULL) or (Localizacao IS NULL);

--FILTRO DE TEXTO
SELECT IdArtista, Nome FROM Artistas
WHERE Nome  LIKE 'Paulo%'; -- Começo da frase

--Pitty% - começo da frase
SELECT IdArtista, Nome FROM Artistas
WHERE Nome  LIKE 'Paulo%'; -- Começo da frase

--%Pitty - final da frase
SELECT IdArtista, Nome FROM Artistas
WHERE Nome  LIKE '%Paulo'; -- Final da frase

--%Pitty% - qualquer lugar da frase ou tbm o meio
SELECT IdArtista, Nome FROM Artistas
WHERE Nome  LIKE '%Paulo%'; -- Meio da frase

-- Ordenacao por ordem alfabetica
SELECT IdUsuario, Nome FROM Usuarios
ORDER BY Nome;

SELECT IdAlbum, Nome, QtdMinutos FROM Album
ORDER BY QtdMinutos;

--Ordenação invertida - MAIOR PRO MENOR
SELECT Email, Nome, IdUsuario FROM Usuarios
ORDER BY IdUsuario DESC;

--Ordenação invertida - MENOR PRO MAIOR
SELECT Email, Nome, IdUsuario FROM Usuarios
ORDER BY IdUsuario ASC;

--COUNT
SELECT COUNT(IdUsuario) FROM Usuarios;

/* OPTUS - ENTREGA DE HOJE - 31/01/2020 */


/*SELECIONAR OS ALBUNS DO MESMO ARTISTA*/
SELECT IdArtista, Nome FROM Artistas
WHERE Nome  LIKE '%Mario';

/* SELECIONAR OS ALBUNS LANÇADOS NA MESMA DATA */
SELECT * FROM Album WHERE DataLancamento = '2020-01-31';


/*SELECIONAR OS ARTISTAS DO MESMO ESTILO MUSICAL*/
SELECT * FROM Artistas WHERE IdEstilo = 2;

/*SELECIONAR ALBUNS E ARTISTAS E ORDENAR A DATA DE LANÇAMENTO */
SELECT * FROM Album WHERE Id_Artista = 2;
SELECT * FROM Album WHERE DataLancamento = '2020-01-31';
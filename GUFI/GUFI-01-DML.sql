
USE GUFImanha;

/*					DML			   */

INSERT INTO TipoUsuario VALUES('ADM'),
							  ('COMUM');
go

INSERT INTO Usuario VALUES('ADM','ADM@ADM.COM','adm123','2019-04-13','Masculino',1)
INSERT INTO Usuario VALUES('Carol','CAROL@EMAIL.COM','carol123','2020-03-09','Feminino',2)
INSERT INTO Usuario VALUES('Saulo','SAULO@GMAIL.COM','saulo123','2021-03-05','Masculino',3)
go

INSERT INTO TipoEvento VALUES('React')
INSERT INTO TipoEvento VALUES('SQL')
INSERT INTO TipoEvento VALUES('C#')
go

INSERT INTO Instituicao VALUES('Escola Senai de Informatica','77382342982323','Alameda Barão de Lima')
go

INSERT INTO Presencas VALUES('Nao confirmada',2,2)
INSERT INTO Presencas VALUES('Confirmada',2,3)
INSERT INTO Presencas VALUES('Confirmada',3,1)
go

INSERT INTO Eventos VALUES('Orientação a objetos1',1,'2020-03-04','Conceito OO',1,1);
INSERT INTO Eventos VALUES('Ciclos de Vida1',0,'2020-03-04','Ciclos de vida',2,1);
INSERT INTO Eventos VALUES('Introdução SQL1',1,'2020-03-04','Introdução ao SQL',3,1);
go

SELECT NomeUsuario, DATENAME(MONTH,DataCadastro) as MES
FROM Usuario
GO

SELECT NomeUsuario, DATENAME(WEEKDAY, DataCadastro) AS "Dias da Semana"
FROM Usuario
GO


SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;
SELECT * FROM TipoEvento;
SELECT * FROM Instituicao;
SELECT * FROM Presencas;
SELECT * FROM Eventos;

DROP TABLE Eventos;
DROP TABLE TipoUsuario;
DROP TABLE Usuario;
DROP TABLE Instituicao;
DROP TABLE Presencas;
DROP TABLE TipoEvento;

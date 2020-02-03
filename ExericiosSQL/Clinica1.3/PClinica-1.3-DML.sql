USE PCLINICAmanha;

/*

		DML - LINGUAGEM DE MANIPULÇAO DE DADOS

*/

INSERT INTO Clinica VALUES('Nome1', 'Endereco1'),
						  ('Nome2', 'Endereco2'),
						  ('Nome3', 'Endereco3'),
						  ('Nome4', 'Endereco4'),
						  ('Nome5', 'Endereco5');
GO

INSERT INTO Dono VALUES ('Dono1'),
						('Dono2'),
						('Dono3'),
						('Dono4'),
						('Dono5');
GO

INSERT INTO TipoPet VALUES('TipoPet1'),
						  ('TipoPet2'),
						  ('TipoPet3'),
						  ('TipoPet4'),
						  ('TipoPet5');
GO


INSERT INTO Veterinario VALUES('NomeA','26365',1),
							   ('NomeB','36323',2),
							   ('NomeC', '36985',3),
							   ('NomeD','24325',4),
							   ('NomeE','48963',5);
GO

INSERT INTO Pet VALUES('NomePet1','11923698361',1,1),
					  ('NomePet2','11968411533',2,2),
					  ('NomePet3','11965877445',3,3),
					  ('NomePet4','11965269877',4,4),
					  ('NomePet5','11978453215',5,5);
GO

INSERT INTO Raca VALUES ('Raça1',1),
						('Raça2',2),
						('Raça3',3),
						('Raça4',4),
						('Raça5',5);
GO


INSERT INTO Atendimento VALUES('2020-02-03', 'Descricao1',1,1),
							  ('2024-05-25', 'Descricao2',2,2),
							  ('2023-04-14', 'Descricao3',3,3),
							  ('2019-01-22', 'Descricao4',4,4),
							  ('2019-03-25', 'Descricao5',5,5);
GO

SELECT * FROM Clinica;
SELECT * FROM Dono;
SELECT * FROM TipoPet;
SELECT * FROM Veterinario;
SELECT * FROM Pet;
SELECT * FROM Raca;
SELECT * FROM Atendimento;
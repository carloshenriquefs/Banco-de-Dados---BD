USE DPSmanha;
/*
			DML
*/

INSERT INTO Departamentos VALUES('DESIGN'),
								('DESENVOLVIMENTO'),
								('Nome3'),
								('Nome4'),
								('Nome5');

INSERT INTO Habilidades VALUES('HTML'),
							  ('DESENHAR INTERFACES'),
							  ('DESENHAR'),
							  ('JAVA'),
							  ('CSS'),
							  ('KOTLIN');

INSERT INTO Funcionarios VALUES('Erick','12332145666','1000',1),
								('Helena','32112365444','1000',2),
								('Jucelino','98778965444','2000',2),
								('NomeD','98556344552','7569,89',4),
								('NomeE','56948411621','2365,85',5);

INSERT INTO FuncionariosHabilidades VALUES(1),
										  (1),
										  (2),
										  (5),
										  (2),
										  (4);


SELECT * FROM Departamentos;
SELECT * FROM Habilidades;
SELECT * FROM Funcionarios;
SELECT * FROM FuncionariosHabilidades;

DROP TABLE Departamentos;
DROP TABLE Habilidades;
DROP TABLE  Funcionarios;
DROP TABLE FuncionariosHabilidades; 
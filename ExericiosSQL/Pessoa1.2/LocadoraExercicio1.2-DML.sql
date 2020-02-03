USE LOCADORAAmanha;


/*
				DML
*/


INSERT INTO Marca VALUES('Marca1'),
						('Marca2'),
						('Marca3'),
						('Marca4'),
						('Marca5');
GO

INSERT INTO Modelo VALUES('Modelo1',1),
						('Modelo2',2),
						('Modelo3',3),
						('Modelo4',4),
						('Modelo5',5);
GO

INSERT INTO Empresa VALUES('Empresa1'),
						  ('Empresa2'),
						  ('Empresa3'),
						  ('Empresa4'),
						  ('Empresa5');
GO

INSERT INTO Veiculo VALUES('Veiculo1',1,1),
						  ('Veiculo2',2,2),
						  ('Veiculo3',3,3),
						  ('Veiculo4',4,4),
						  ('Veiculo5',5,5);
GO

INSERT INTO Cliente VALUES('Cliente1','09328398733'),
						  ('Cliente2','23423253535'),
						  ('Cleinte3','42342555643'),
						  ('Cliente4','34233353521'),
						  ('Cliente5','34233242354');
GO

INSERT INTO Aluguel VALUES('2000-04-23','2003-09-12',1,1),
						('2009-03-12','2007-03-10',2,2),
						('2004-05-17','2004-06-14',3,3),
						('2003-02-11', '2001-04-12',4,4),
						('2018-05-19', '2002-04-14',5,5);
GO

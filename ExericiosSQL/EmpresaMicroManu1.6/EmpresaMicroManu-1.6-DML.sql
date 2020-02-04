USE MicroManuManha;

/*

		DML - LINGUAGEM DE MANIPULAÇÃO DE DADOS

*/

INSERT INTO Clientes VALUES('Nome1'),
							('Nome2'),
							('Nome3'),
							('Nome4'),
							('Nome5');

INSERT INTO TipoConsertos VALUES('Descricao1'),
								('Descricao2'),
								('Descricao3'),
								('Descricao4'),
								('Descricao5');

INSERT INTO Pedidos VALUES('Equipamen1','Entrada1','Saida1',1,1,1),
						('Equipamen2','Entrada2','Saida2',2,2,2),
						('Equipamen3','Entrada3','Saida3',3,3,3),
						('Equipamen4','Entrada4','Saida4',4,4,4),
						('Equipamen5','Entrada5','Saida5',5,5,5);

INSERT INTO Item VALUES('Descricao1'),
						('Descricao2'),
						('Descricao3'),
						('Decricao4'),
						('Descricao5');

INSERT INTO Colaboradores VALUES('NomeA','1224,40'),
								('NomeB','1214,45'),
								('NomeC','2344,45'),
								('NomeD', '2424,43'),
								('NomeE','5654,23');

INSERT INTO PedidosColaboradores VALUES(1),
										(2),
										(3),
										(4),
										(5);





SELECT * FROM Clientes;
SELECT * FROM Pedidos;
SELECT * FROM Item;
SELECT * FROM TipoConsertos;
SELECT * FROM Colaboradores;
SELECT * FROM PedidosColaboradores;
USE EcommerceManha;

/*

		      DML - LINGUAGEM DE DEFINIÇÃO DE DADOS

*/

INSERT INTO Lojas VALUES('NomeLoja1'),
						('NomeLoja2'),
						('NomeLoja3'),
						('NomeLoja4'),
						('NomeLoja5');

INSERT INTO SubCategorias VALUES('SubCategoria1',1),
							    ('SubCategoria2',2),
								('SubCategoria3',3),
								('SubCategoria4',4),
								('SubCategoria5',5);

INSERT INTO Produtos VALUES('NomeProduto1', '36,45',1),
							('NomeProduto2','23,40',2),
							('NomeProduto3','11,00',3),
							('NomeProduto4','15,00',4),
							('NomeProduto5','24,00',5);

INSERT INTO PedidosProdutos VALUES(1),
							      (2),
							      (3),
								  (4),
							      (5);

INSERT INTO Clientes VALUES('NomeCliente1'),
							('NomeCliente2'),
							('NomeCliente3'),
							('NomeCliente4'),
							('NomeCliente5');

INSERT INTO Pedidos VALUES('1','2015-02-12','1',1),
						  ('2','2019-01-16','2',2),
						  ('3','2015-06-13','3',3),
						  ('4','2017-04-27','4',4),
						  ('5','2014-03-12','5',5);
SELECT * FROM Pedidos;
SELECT * FROM Clientes;
SELECT * FROM PedidosProdutos;
SELECT * FROM Produtos;
SELECT * FROM SubCategorias;
SELECT * FROM Lojas;
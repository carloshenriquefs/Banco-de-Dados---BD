--DDL - LINGUAGEM DE DEFINIÇÃO DE DADOS
CREATE DATABASE SucoJailson;

--DDL
USE SucoJailson;

--DDL
CREATE TABLE tb_DadosProduto(
	cdProduto INT PRIMARY KEY IDENTITY(1,1),
	nmProduto VARCHAR(50) NOT NULL,
	vlProduto DECIMAL(6,2) NOT NULL
);

--DDL
CREATE TABLE tb_Clientes(

	cdCliente INT PRIMARY KEY IDENTITY(1,1),
	nmCliente VARCHAR(50) NOT NULL,
	dtNascimento DATE,
	inSexo VARCHAR(1) NOT NULL,
	nmEndereco VARCHAR(50),
	nmCidade VARCHAR(50),
	nmEstado VARCHAR(30),
	nmTelefone1 VARCHAR(15),
	nmTelefone2 VARCHAR(15)
);

--DDL
CREATE TABLE tb_Vendas(
	cdVenda INT PRIMARY KEY IDENTITY(1,1),
	cdCliente INT NOT NULL FOREIGN KEY REFERENCES tb_Clientes(cdCliente),
	dtVenda DATETIME NOT NULL
);

CREATE TABLE tb_ProdutoVenda(
	cdProdutoVenda INT PRIMARY KEY IDENTITY(1,1),
	cdVenda INT FOREIGN KEY REFERENCES tb_Vendas(cdVenda),
	cdProduto INT FOREIGN KEY REFERENCES tb_DadosProduto(cdProduto) NOT NULL,
	qtProduto INT NOT NULL
);

--DML - LINGUAGEM DE MODELAGEM DE DADOS
INSERT INTO tb_DadosProduto VALUES('Suco de Maracuja', 3.5),
('Suco de Goiaba', 8.5);

INSERT INTo tb_Clientes VALUES('Paulo Guina', '1980-05-01', 'M','Rua da Mecanica, 400', 'Campinhas', 'São Paulo','11 2234-5654', '11 3243-3243');

INSERT INTO tb_Vendas VALUES (1,GETDATE());
--DML
INSERT INTO tb_Vendas VALUES (5, 3.6);

INSERT INTO tb_ProdutoVenda VALUES(1,1,3);
INSERT INTO tb_ProdutoVenda VALUES(1,2,3);
INSERT INTO tb_ProdutoVenda VALUES(8,3,4);


--SOMA DOS VALORES DAS TABELAS

DROP TABLE tb_Vendas;

ALTER TABLE tb_Vendas
ADD CONSTRAINT FK_Produto_Vendas
FOREIGN KEY (cdProduto)
REFERENCES tb_Produtos(cdProduto)


--VERIFICAR REGISTROS(TUPLAS)
--SELECIONANDO DADOS DAS TABELAS
SELECT * FROM tb_DadosProduto ;
SELECT * FROM tb_Vendas;
SELECT * FROM tb_Clientes;
SELECT * FROM tb_ProdutoVenda;

--SELECT [Colunas] FROM [tabela]
SELECT nmProduto FROM tb_DadosProduto;

/*SELECT V.cdVenda, C.nmCliente, P.cdProduto, P.nmProduto, PV.qtProduto, P.vlProduto, qtProduto * vlProduto AS ValorTotal
FROM tb_DadosProduto P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente*/


SELECT V.cdVenda, C.nmCliente,NULL,'Total Produtos - Total da Vendas', SUM(PV.qtProduto) qtTotalProdutos, SUM(P.vlProduto * PV.qtProduto) AS qtValorTotalVenda --, P.vlProduto, qtProduto * vlProduto AS ValorTotal
FROM tb_DadosProduto P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente
GROUP BY V.cdVenda, C.nmCliente
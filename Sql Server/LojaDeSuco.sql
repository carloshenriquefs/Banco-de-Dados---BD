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
	cdProduto INT FOREIGN KEY REFERENCES tb_DadosProduto(cdProduto)
);

--DML - LINGUAGEM DE MODELAGEM DE DADOS
INSERT INTO tb_DadosProduto VALUES('Suco de Maracuja', 3.5),
('Suco de Goiaba', 8.5);

--DML
INSERT INTO tb_Vendas VALUES (5, 3.6);


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

--SELECT [Colunas] FROM [tabela]
SELECT nmProduto FROM tb_DadosProduto;
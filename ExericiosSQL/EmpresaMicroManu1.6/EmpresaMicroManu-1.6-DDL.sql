/*

		DDL - LINGUAGEM DE DEFINIÇÃO DE DADOS

*/

CREATE DATABASE MicroManuManha;

USE MicroManuManha;

CREATE TABLE Clientes(
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR(200) NOT NULL
);

CREATE TABLE Item(
	IdItem INT PRIMARY KEY IDENTITY,
	DescricaoItens VARCHAR(200) NOT NULL,
);

CREATE TABLE TipoConsertos(
	IdTipo INT PRIMARY KEY IDENTITY,
	DescricaoTiposConsertos VARCHAR(100) NOT NULL
);

CREATE TABLE Pedidos(
	IdPedido INT PRIMARY KEY IDENTITY,
	NumeroEquipamento CHAR(10) NOT NULL,
	Entrada VARCHAR(100) NOT NULL,
	Saida VARCHAR(100) NOT NULL,
	IdCliente INT FOREIGN KEY REFERENCES Clientes(IdCliente),
	IdItem INT FOREIGN KEY REFERENCES Item(IdItem),
	IdTipo INT FOREIGN KEY REFERENCES TipoConsertos(IdTipo)
);



CREATE TABLE Colaboradores(
	IdColaborador INT PRIMARY KEY IDENTITY,
	NomeColaborador VARCHAR(200) NOT NULL,
	Salario VARCHAR(100)

);

CREATE TABLE PedidosColaboradores(
	IdPedido INT PRIMARY KEY IDENTITY,
	IdColaborador INT FOREIGN KEY REFERENCES Colaboradores(IdColaborador)
);

SELECT * FROM Clientes;
SELECT * FROM Pedidos;
SELECT * FROM Item;
SELECT * FROM TipoConsertos;
SELECT * FROM Colaboradores;
SELECT * FROM PedidosColaboradores;

DROP TABLE PedidosColaboradores;
DROP TABLE Pedidos;
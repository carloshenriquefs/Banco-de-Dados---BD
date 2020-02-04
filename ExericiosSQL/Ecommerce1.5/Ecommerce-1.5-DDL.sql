/*

		      DDL - LINGUAGEM DE DEFINIÇÃO DE DADOS

*/


CREATE DATABASE EcommerceManha;

USE EcommerceManha;

CREATE TABLE Lojas(
	IdLoja INT PRIMARY KEY IDENTITY,
	NomeLoja VARCHAR(200) NOT NULL
);
go

CREATE TABLE Categorias(
	IdCategoria INT PRIMARY KEY IDENTITY,
	NomeCategoria VARCHAR(200) NOT NULL,
	IdLoja INT FOREIGN KEY REFERENCES Lojas(IdLoja)
);
go

CREATE TABLE SubCategorias(
	IdSubCategorias INT PRIMARY KEY IDENTITY,
	NomeSubCategorias VARCHAR(200) NOT NULL,
	IdCategoria INT FOREIGN KEY REFERENCES Categorias(IdCategoria)

);
go

CREATE TABLE Produtos(
	IdProduto INT PRIMARY KEY IDENTITY,
	NomeProduto VARCHAR(200) NOT NULL,
	Valor VARCHAR(100) NOT NULL,
	IdSubCategorias INT FOREIGN KEY REFERENCES SubCategorias(IdSubCategorias)
);
go

CREATE TABLE PedidosProdutos(
	IdPedido INT PRIMARY KEY IDENTITY,
	IdProduto INT FOREIGN KEY REFERENCES Produtos(IdProduto)
);
go

CREATE TABLE Clientes(
	IdCliente INT PRIMARY KEY IDENTITY,
	NomeCliente VARCHAR(200) NOT NULL
);
go

CREATE TABLE Pedidos(
	IdPedido INT PRIMARY KEY IDENTITY,
	NumeroPedido VARCHAR(100) NOT NULL,
	DataPedido DATE,
	Status CHAR(1),
	IdCliente INT FOREIGN KEY REFERENCES Clientes(IdCliente)
);
go

DROP TABLE Pedidos;
DROP TABLE Clientes;
DROP TABLE PedidosProdutos;
DROP TABLE Produtos;
DROP TABLE SubCategorias;
DROP TABLE Categorias;
DROP TABLE Lojas;
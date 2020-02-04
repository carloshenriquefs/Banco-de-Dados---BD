/*

		DDL - LINGUAGEM DE MANIPULAÇÃO DE DADOS

*/


CREATE DATABASE DPSmanha;

USE DPSmanha;

CREATE TABLE Departamentos(
	IdDepartamento INT PRIMARY KEY IDENTITY,
	NomeDepartamento VARCHAR(200) NOT NULL
);

CREATE TABLE Habilidades(
	IdHabilidades INT PRIMARY KEY IDENTITY,
	NomeHabilidade VARCHAR(200) NOT NULL
);

CREATE TABLE Funcionarios(
	IdFuncionarios INT PRIMARY KEY IDENTITY,
	NomeFuncionarios VARCHAR(200),
	CPF VARCHAR(11),
	Salario VARCHAR(50),
	IdDepartamento INT FOREIGN KEY REFERENCES Departamentos(IdDepartamento)

);

CREATE TABLE FuncionariosHabilidades(
	IdFuncionario INT PRIMARY KEY IDENTITY,
	IdHabilidades INT FOREIGN KEY REFERENCES Habilidades(IdHabilidades) 
);

UPDATE Funcionarios
SET Salario = '1500'
WHERE IdFuncionarios = 1;


SELECT * FROM Departamentos;
SELECT * FROM Habilidades;
SELECT * FROM Funcionarios;
SELECT * FROM FuncionariosHabilidades;
USE DPSmanha;

/*

		DQL

*/

SELECT NomeFuncionarios FROM Funcionarios;
SELECT NomeHabilidade FROM Habilidades;
SELECT NomeDepartamento FROM Departamentos;
SELECT NomeFuncionarios,NomeDepartamento
FROM Funcionarios F INNER JOIN Departamentos D ON F.IdDepartamento = D.IdDepartamento;
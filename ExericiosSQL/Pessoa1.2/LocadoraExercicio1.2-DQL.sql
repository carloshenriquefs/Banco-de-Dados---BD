USE LOCADORAAmanha;
/*
		     DQL
*/

SELECT DataInicio,DataFim,NomeEmpresa,NomeCliente,CPF,Placa,NomeModelo
FROM Aluguel A INNER JOIN Cliente C ON A.IdCliente = C.IdCliente
INNER JOIN Veiculo V ON V.IdVeiculo = A.IdVeiculo
INNER JOIN Empresa E ON E.IdEmpresa = V.IdEmpresa
INNER JOIN Modelo M ON M.IdModelo = V.IdModelo;
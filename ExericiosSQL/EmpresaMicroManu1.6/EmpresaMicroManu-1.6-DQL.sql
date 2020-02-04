USE MicroManuManha;

/*

		DQL - LINGUAGEM DE CONSULTA DE DADOS

*/

SELECT NomeCliente, NumeroEquipamento,Entrada,Saida,DescricaoItens,DescricaoTiposConsertos,NomeColaborador,Salario
FROM Clientes C INNER JOIN Pedidos P ON C.IdCliente = P.IdCliente
INNER JOIN Item I ON I.idItem = P.IdPedido
INNER JOIN TipoConsertos TC ON TC.IdTipo = P.IdTipo
INNER JOIN PedidosColaboradores PC ON PC.IdPedido = P.IdPedido
INNER JOIN Colaboradores CO ON CO.IdColaborador = PC.IdColaborador;
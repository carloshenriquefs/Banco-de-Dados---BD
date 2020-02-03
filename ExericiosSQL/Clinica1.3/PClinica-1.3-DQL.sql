USE PCLINICAmanha;

/*

	   DQL - LINGUAGEM DE CONSULTA DE DADOS

*/

SELECT RazaoSocial,Endereco,NomeDono,Titulo,NomeVeterinario,CRMV,NomePet,Telefone,Titulo,Data,Descricao
FROM Clinica C INNER JOIN  Veterinario V ON C.IdClinica = V.IdClinica
INNER JOIN Atendimento C ON C.IdVet = C.IdVet
INNER JOIN Pet P ON C.IdPet = P.IdPet
INNER JOIN Dono D ON P.IdDono = D.IdDono
INNER JOIN Raca R ON R.IdRaca = P.IdRaca
INNER JOIN TipoPet TP ON R.IdRaca = TP.IdRaca
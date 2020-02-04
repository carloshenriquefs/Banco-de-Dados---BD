USE PCLINICAmanha;

/*

	   DQL - LINGUAGEM DE CONSULTA DE DADOS

*/

SELECT RazaoSocial,Endereco,NomeDono,NomeVeterinario,CRMV,NomePet,Telefone,Data,Descricao
FROM Clinica C INNER JOIN  Veterinario V ON C.IdClinica = V.IdClinica
INNER JOIN Atendimento A ON A.IdVet = V.IdVet
INNER JOIN Pet P ON P.IdPet = A.IdPet
INNER JOIN Dono D ON D.IdDono = P.IdDono
INNER JOIN Raca R ON P.IdRaca = R.IdRaca
INNER JOIN TipoPet TP ON R.IdTipoPet = TP.IdTipoPet


SELECT RazaoSocial,Endereco,NomeDono,NomeVeterinario,CRMV,NomePet,Telefone,Data,Descricao
FROM Clinica C INNER JOIN Veterinario V ON C.IdClinica = V.IdClinica
INNER JOIN Atendimento A ON A.IdVet = V.IdVet
INNER JOIN Pet P ON P.IdPet = A.IdPet
INNER JOIN Dono D ON D.IdDono = P.IdDono
INNER JOIN Raca R ON R.IdRaca = P.IdRaca
INNER JOIN TipoPet TP ON TP.IdTipoPet = R.IdTipoPet













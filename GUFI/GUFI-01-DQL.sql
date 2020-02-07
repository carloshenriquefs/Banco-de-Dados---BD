USE GUFImanha;

/*

		DQL

*/

SELECT NomeUsuario FROM Usuario
SELECT NomeInstituicao FROM Instituicao
SELECT IdTipoEvento FROM Eventos
SELECT NomeEvento FROM Eventos
SELECT NomeEvento FROM Eventos WHERE AcessoLivre = 1;
SELECT NomeEvento, IdTipoEvento FROM Eventos

/*1*/
SELECT US.NomeUsuario, US.Email, US.Senha, US.DataCadastro, US.Genero FROM Usuario US

/*2*/
SELECT I.NomeInstituicao, I.CNPJ, I.Endereco 
FROM Instituicao I

/*3*/
SELECT TituloTipoUsuario FROM TipoUsuario

/*4*/
SELECT E.NomeEvento,E.IdTipoEvento,E.DataEventos, E.AcessoLivre,E.Descricao, E.IdTipoEvento, E.IdInstituicao,I.CNPJ, I.NomeInstituicao,I.Endereco 
FROM Eventos E INNER JOIN Instituicao I ON E.IdInstituicao = I.IdInstituicao

/*5º*/
SELECT E.NomeEvento, E.IdTipoEvento, E.DataEventos, E.AcessoLivre,E.Descricao, E.IdTipoEvento, E.IdInstituicao 
FROM Eventos E INNER JOIN Instituicao I ON E.IdInstituicao = I.IdInstituicao
WHERE AcessoLivre = '1'

/*6º*/
SELECT E.NomeEvento, E.IdTipoEvento,E.DataEventos, E.AcessoLivre, E.Descricao,I.NomeInstituicao,I.CNPJ,I.Endereco
FROM Eventos E INNER JOIN Instituicao I ON E.IdInstituicao = E.IdInstituicao

/*7º*/
SELECT E.NomeEvento,E.AcessoLivre,E.DataEventos,E.Descricao,E.IdInstituicao, I.NomeInstituicao,I.CNPJ,I.Endereco,E.NomeEvento,E.AcessoLivre,E.DataEventos,E.Descricao,U.NomeUsuario,U.Email,U.Senha,U.DataCadastro,U.Genero
FROM Eventos E INNER JOIN Instituicao I ON E.IdInstituicao = I.IdInstituicao
INNER JOIN Presencas P ON P.IdEvento = E.IdEvento
INNER JOIN Usuario U ON U.IdUsuario = P.IdUsuario
WHERE AcessoLivre = '1'

/*EXTRAS */
SELECT AcessoLivre FROM Eventos
SELECT AcessoLivre = Case AcessoLivre WHEN '1' THEN 'Publico' WHEN '0' THEN 'Privado' ELSE 'NENHUM' END FROM Eventos

SELECT E.NomeEvento,E.AcessoLivre,E.DataEventos,E.Descricao,E.IdInstituicao, I.NomeInstituicao,I.CNPJ,I.Endereco,E.NomeEvento,E.AcessoLivre,E.DataEventos,E.Descricao,U.NomeUsuario,U.Email,U.Senha,U.DataCadastro,U.Genero,P.IdPresenca,P.Situacao
FROM Eventos E INNER JOIN Instituicao I ON E.IdInstituicao = I.IdInstituicao
INNER JOIN Presencas P ON P.IdEvento = E.IdEvento
INNER JOIN Usuario U ON U.IdUsuario = P.IdUsuario
WHERE U.IdUsuario = 2 AND P.Situacao = 'Confirmada';


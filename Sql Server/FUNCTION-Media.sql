CREATE FUNCTION nota_media(@nome VARCHAR(30))
RETURNS REAL
AS
	BEGIN
	DECLARE @media REAL
	SELECT @media = (nota1+ nota2 + nota3 + nota4*2)/5
	FROM tbl_alunos
	WHERE nome_aluno = @nome
	RETURN @media
END

SELECT dbo.nota_media('Fabio');

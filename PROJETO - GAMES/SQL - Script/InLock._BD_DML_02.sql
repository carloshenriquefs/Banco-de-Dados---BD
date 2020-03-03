USE InLock_Games_Manha;

INSERT INTO Estudio (NomeEstudio)
VALUES		('Blizzard'),
			('Rockstar Studios'),
			('Square Enix');

INSERT INTO Jogos (NomeJogo, Descricao, DataLancamento, Valor, IdEstudio) VALUES ('Diablo 3', 'Diablo 3 é uma jogo cheio de ação e viciante, seja você novato ou fã', '2012-05-15', 99.00, 1);
INSERT INTO Jogos (NomeJogo, Descricao, DataLancamento, Valor, IdEstudio) VALUES ('Red Dead Redemption II' , 'Jogo de ação-aventura western', '2018-10-26', 120.00, 2);

INSERT INTO Usuarios (Email, Senha) VALUES ('admin@admin.com','admin'),
											('cliente@cliente.com','cliente');

INSERT INTO TipoUsuarios (Titulo)
VALUES		('Administrador'),
			('Comum');

CREATE DATABASE RpgResposta;

USE RpgResposta;

CREATE TABLE Usuarios 
(
	UsuarioId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(150) UNIQUE NOT NULL,
	Senha VARCHAR(255) NOT NULL
);

CREATE TABLE Classes
(
	ClasseId INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(150) UNIQUE NOT NULL,
	Descricao VARCHAR(255) 
);

CREATE TABLE Habilidades 
(
	HabilidadeId INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(150) UNIQUE NOT NULL
);

CREATE TABLE Personagens
(
	PersonagemId INT PRIMARY KEY IDENTITY,
	NomePersonagem VARCHAR(10) UNIQUE NOT NULL,
	UsuarioId INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UsuarioId),
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId)
);

CREATE TABLE ClassesHabilidades
(
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClasseId),
	HabilidadeId INT FOREIGN KEY REFERENCES Habilidades(HabilidadeId)
);

--INSERÇÃO DE DADOS
INSERT INTO Usuarios VALUES ('Danos','Senha1234');
INSERT INTO Usuarios VALUES ('Fortnite','Senha1234');
INSERT INTO Classes VALUES ('Monge', 'Descrição do Monge');
INSERT INTO Habilidades VALUES ('Recuperar Vida');
INSERT INTO Personagens (NomePersonagem, UsuarioId, ClasseId) VALUES ('BitBug',1,1);
INSERT INTO ClassesHabilidades (ClasseId, HabilidadeId) VALUES (1,1); 

--EXCLUSAO DE DADOS
DELETE FROM Usuarios WHERE UsuarioId = 2;

--ALTERAÇÃO DE DADOS
UPDATE Usuarios SET Email = 'Danox' WHERE Email = 'Danos'
UPDATE Habilidades set Nome = 'Pular 5 metros' WHERE HabilidadeId = 1;

--CONSULTA DE DADOS
SELECT * FROM Usuarios;
SELECT ClasseId, Nome, Descricao FROM Classes;
SELECT * FROM Habilidades;
SELECT * FROM ClassesHabilidades;
SELECT * FROM Personagens;


CREATE DATABASE Faculdade;
USE Faculdade;

CREATE TABLE Aluno (
IdAluno int primary key,
Nome varchar(40),
Celular varchar(13),
E_mail varchar(40),
Empresa varchar (40),
Resp_Empresa varchar (40)
);

SELECT * FROM Aluno;

INSERT INTO Aluno VALUES
('001', 'Hanan Ortiz', '11952404468', 'hananferreira2002@gmail.com', 'C6 Bank', 'Júlia'),
('002', 'Marcelo Santos', '11972980409', 'marcelolsantos30@gmail.com', 'Stefanini', 'Thiago'),
('003', 'Matheus Santos da Silva', '11975640903', 'matheus.ssilva@bandtec.com.br', 'C6 Bank', 'Júlia'),
('004', 'Paulo Guilherme Santos Camargo', '11984022555', 'pgsc2015@gmail.com', 'Safra', 'Joseph Safra'),
('005', 'Vitória Souza', '11997327321', 'vitoria.santos@bandtec.com.br', 'Linx', 'Luana Garcia');

SELECT * FROM Aluno;
DROP TABLE Aluno;

CREATE TABLE atletas (
idAtleta int primary key,
Nome varchar(40),
Modalidade varchar(40),
qtdMedalha int
);

SELECT * FROM atletas;
INSERT INTO atletas VALUES
("700", "Martha Silva", "Futebol", "7"),
("701", "Pelé", "Futebol", "10"),
("702", "Gustavo Borges", "Natação", "2"),
("703", "César Cielo", "Natação", "1"),
("704", "Jaqueline Carvalho", "Vôlei", "3"),
("705", "Sergio Dutra", "Vôlei", "5");

SELECT * FROM atletas;
SELECT Nome, qtdMedalha FROM atletas;
SELECT * FROM atletas WHERE Modalidade = "Natação";
SELECT * FROM atletas ORDER BY modalidade ASC;
SELECT * FROM atletas ORDER BY qtdMedalha DESC;
SELECT * FROM atletas WHERE Nome LIKE '%s%';
SELECT * FROM atletas WHERE Nome LIKE 'P%';
SELECT * FROM atletas WHERE Nome LIKE '%o';
SELECT * FROM atletas WHERE Nome Like '%r_';

DROP TABLE atletas;


CREATE TABLE Musica (
idMusica varchar(40) primary key,
Titulo varchar(40),
Artista varchar (40),
Genero varchar(40)
);

SELECT * FROM Musica;
INSERT INTO Musica VALUES 
("001", "Human Nature", "Michael Jackson", "Soft Rock"),
("002", "You Rock My World", "Michael Jackson", "Pop"),
("003", "Slave to the Rhythm", "Michael Jackson", "Pop"),
("004", "This Is It", "Michael Jackson", "Pop"),
("005", "Earth Song", "Michael Jackson", "Blues"),
("006", "Beautiful Day", "U2", "Rock"),
("007", "New Year s Day", "U2", "Rock"),
("008", "Snow", "Red Hot Chili Peppers", "Rock alternativo"),
("009", "Waves", "Mr. Probz", "R&B"),
("010", "Guia-me", "Daniela Araújo", "Gospel");

SELECT * FROM Musica;
SELECT Titulo, Artista FROM Musica;
SELECT * FROM Musica WHERE genero = "Rock";
SELECT * FROM Musica WHERE Artista = "Michael Jackson";
SELECT * FROM Musica ORDER BY Titulo ASC;
SELECT * FROM Musica ORDER BY Artista DESC;
SELECT * FROM Musica WHERE Titulo LIKE "s%";
SELECT * FROM Musica WHERE Artista LIKE "%z";
SELECT * FROM Musica WHERE Genero LIKE "_o%";
SELECT * FROM Musica WHERE Titulo LIKE "%a_";

DROP TABLE Musica;



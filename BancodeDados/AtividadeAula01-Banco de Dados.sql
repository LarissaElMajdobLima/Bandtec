CREATE DATABASE esportes;
USE esportes;
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

CREATE DATABASE PlaylistLary;
USE PlaylistLary;
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
("008", "Snow", "Red Hot Chili Peppers", "Rocj alternativo"),
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



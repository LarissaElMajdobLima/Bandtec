-- Criar database Revista
CREATE DATABASE Revista;
USE Revista; 

-- Criar a tabela Revista
CREATE TABLE Revista (
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar (30)
) auto_increment = 1;

-- Inserir dados, sem informar a categoria
INSERT INTO Revista (nome) VALUES
('NewYorkNews'),
('VOGUE'),
('Billboard'),
('Pequenas Empresas & Grandes Negócios');

SELECT * FROM Revista;

-- Atualizar os dados das categorias 
UPDATE Revista SET categoria = 'Economia/Política' WHERE IdRevista = 1;
UPDATE Revista SET categoria = 'Moda' WHERE IdRevista = 2;
UPDATE Revista SET categoria = 'Mercado Musical' WHERE IdRevista = 3;
UPDATE Revista SET categoria = 'Economia' WHERE IdRevista = 4;
SELECT * FROM Revista;

-- Inserir mais 3 registros completos
INSERT INTO Revista VALUES
(Null, 'Time', 'Notícias'),
(Null, 'National Geographic', 'Natureza e outros'),
(Null, 'The Economist', 'Economia/Política');
SELECT * FROM Revista;

-- Exibir a descrição da estrutura da tabela
DESCRIBE Revista;

-- Alterar a tabela 
ALTER TABLE Revista MODIFY categoria varchar(40);
-- Exibir a descrição da estrutura da tabela
DESCRIBE Revista;

-- Acrescentar Coluna
ALTER TABLE Revista ADD COLUMN Periodicidade varchar(15);

SELECT * FROM Revista;

-- Excluir a Coluna
ALTER TABLE Revista DROP COLUMN Periodicidade;

-- Acrescentar Coluna FK
ALTER TABLE Revista ADD COLUMN fkEditora int;

-- Adicionar o campo fkEditora como FK que referencia a tabela Editora
ALTER TABLE Revista ADD foreign key (fkEditora) references Editora(idEditora);

-- Atualizar fkEditora na tabela Revista 
UPDATE Revista set fkEditora = 1000 where idRevista='1';
UPDATE Revista set fkEditora = 1001 where idRevista='2';
UPDATE Revista set fkEditora = 1002 where idRevista='3';
UPDATE Revista set fkEditora = 1003 where idRevista='4';
UPDATE Revista set fkEditora = 1004 where idRevista='5';
UPDATE Revista set fkEditora = 1005 where idRevista='6';
UPDATE Revista set fkEditora = 1006 where idRevista='7';

UPDATE Revista set fkEditora = 1004 where idRevista='1';
UPDATE Revista set fkEditora = 1000 where idRevista='5';

SELECT * FROM Revista;

-- Criar tabela Editora
CREATE TABLE Editora (
idEditora int primary key auto_increment,
nomeEditora varchar(40),
dataFund date
) auto_increment = 1000;

-- Inserir dados na tabela
INSERT INTO Editora VALUES
(null, 'Time Inc', '1923/03/03'), 
(null, 'VOGUE', '1892/09/02'),
(null, 'Nielsen Company', '1894/07/17'),
(null, 'Globo', '1988/01/25'),
(null, 'Elmajdob s company', '2002/02/09'),
(null, 'Abril', '2000/05/12'),
(null, 'The Economist Group', '1843/09/23');

SELECT * FROM Editora;

-- Exibir os dados das revistas e editoras correspondentes
SELECT * FROM Revista,Editora WHERE idEditora = fkEditora;

-- Exibir os dados da Revista e da Editora, porém apenas de uma Editora 
SELECT * FROM Revista,Editora WHERE fkEditora=idEditora AND idEditora = 1004;
SELECT * FROM Revista,Editora WHERE fkEditora=idEditora AND fkEditora = 1004;


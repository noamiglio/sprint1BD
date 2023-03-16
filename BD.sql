CREATE DATABASE sprint1; 

USE sprint1;  

CREATE TABLE cadastroPessoaFisica (
idUsuário INT primary key auto_increment,
nomeSocial varchar (50),
nomeRegistro varchar (80),
genero char (3) not null, constraint chkGenero CHECK(genero in ('FEM', 'MAS', 'OUT')),  
cpf varchar (20),
email varchar (80),
senha varchar (50)
);  

INSERT INTO cadastroPessoaFisica (IdUsuário, nomeSocial, nomeRegistro, genero, cpf, email, senha) VALUES  
(null, not null, 'José Bezarra', 'MAS', 000000000-00, 'josebezerra@outlook.com','q1w2e3r4'),  
(null, 'Gil', 'Maria Joaquina', 'MAS', 000000000-00, 'giljoaquina@outlook.com','q1w2e3r4'),  
(null, not null, 'Clarice Lispector', 'FEM', 000000000-00, 'claricelispector@outlook.com','q1w2e3r4'),  
(null, not null, 'Laura Cleide', 'OUT', 000000000-00, 'cledinha@outlook.com','q1w2e3r4'),  
(null, not null, 'Debora Silva', 'OUT', 52075866023, 'debsilva@outlook,com', 'q1w2e3r4'), 
(null, 'Cinthia', 'Oscar Rodrigues', 'FEM', 98200394018, 'cinthiasantos@outlook.com', 'q1w2e3r4'), 
(null, not null, 'Ester Rocher', 'FEM', 91720724075, 'estherzinha123@outlook', 'q1w2e3r4'), 
(null, not null, 'Lucca Estaucio', 'MAS', 52446890024, 'lestaucio@outlooko.com', 'q1w2e3r4'); 

SELECT* FROM cadastroPessoaFisica;  

ALTER TABLE cadastroPessoaFisica ADD COLUMN dtNasc date;  

DESC cadastroPessoaFisica;  

UPDATE cadastroPessoaFisica SET dtNasc = '1980-12-12' WHERE idUsuário = 1;  

UPDATE cadastroPessoaFisica SET dtNasc = '1980-12-12' WHERE idUsuário = 2;  

UPDATE cadastroPessoaFisica SET dtNasc = '1980-12-12' WHERE idUsuário = 3;  

UPDATE cadastroPessoaFisica SET dtNasc = '1980-12-12' WHERE idUsuário = 4;  

UPDATE cadastroPessoaFisica SET dtNasc = '1980-12-12' WHERE idUsuário = 5;  

UPDATE cadastroPessoaFisica SET dtNasc = '1980-12-11' WHERE idUsuário = 6; 

UPDATE cadastroPessoaFisica SET dtNasc = '1980-10-30' WHERE idUsuário = 7;   

UPDATE cadastroPessoaFisica SET dtNasc = '1990-04-12' WHERE idUsuário = 8;  

UPDATE cadastroPessoaFisica SET email = 'estherzinha123@outlook.com' WHERE idUsuário = 7; 

SELECT * FROM cadastroPessoaFisica; 

  

  

  

USE sprint1; 

CREATE TABLE cadastroCNPJ ( 
idEmpresa INT PRIMARY KEY auto_increment, 
NomeEmpresa varchar (80), 
NomeFantasia varchar (50), 
CNPJ varchar (50), 
NomeRepresantante varchar (50), 
dtContrato date, 
CPFRepresentante varchar (50), 
endereço VARCHAR (100) NOT NULL, 
CEP char (8) NOT NULL, 
contato INT NOT NULL, 
contato2 INT, 
email varchar (80), 
senha varchar (80) 
) auto_increment = 10; 

  

INSERT INTO cadastroCNPJ (idEmpresa, nomeEmpresa, nomeFantasia, CNPJ, NomeRepresantante, dtContrato, CPFRepresentante, endereço, CEP, contato, contato2, email, senha) VALUES 
(null, 'Benício e Oliver Construções Ltda', 'Ben e Oli LTDA', 45750541000175, 'Savana Pericles', '2013-12-18', 000000000, 'Rua Anvar Dabus,842 - Vila Mariana', 17017120, 26792911, null, 'auditoria@benicioeoliverconstrucoesltda.com.br','q1w2e3r4'), 
(null, 'Maso e Santo SA', 'Airoa', 42220555724375, 'Michael Scott', '2013-12-18', 000000000, 'Rua Anvar Dabus,842 - Vila Mariana', 17017120, 26792911, null, 'auditoria@benicioeoliverconstrucoesltda.com.br','q1w2e3r4'), 
(null, 'Maso e Santo SA', 'Noira', 42220555724375, 'Valeria Almeida', '2013-12-18', 000000000, 'Rua Anvar Dabus,842 - Vila Mariana', 17017120, 26792911, null, 'auditoria@benicioeoliverconstrucoesltda.com.br','q1w2e3r4'), 
(null, 'Benício e Oliver Construções Ltda', 'BENN', 45750541000175, 'Carlos Braga', '2013-12-18', 000000000, 'Rua Anvar Dabus,842 - Vila Mariana', 17017120, 26792911, null, 'auditoria@benicioeoliverconstrucoesltda.com.br','q1w2e3r4'), 
(null, 'Carolina e Antonio Esportes ME', 'Carolsport', 01942157000107, 'Josef Ramos', '2018-12-18', 000000000, 'Rua Doutor Romeo Campos Vergal,854 -Bragança Paulista', 12906780, 26792911, null, 'contato@carolinaeantonioesportesme.com.br','q1w2e3r4'), 
(null, 'Raimundo e Andreia Informática ME', 'Raiman LTDA', 77837134000196, 'Silvia Lima', '2013-12-18', 000000000, 'Rua Luiz Gonzaga da Silva,842 - Nova Cidade', 15991498, 26792911, null, 'silvia.lima@raimundoeandreiainformaticame.com.br','q1w2e3r4'); 

SELECT * FROM cadastroCNPJ; 

USE sprint1;

CREATE TABLE Sensores (
idSensor INT PRIMARY KEY auto_increment,
tipoSensor CHAR (4), CONSTRAINT chkTipoSensor CHECK (tipoSensor IN('TEMP', 'MOVI')),
serie INT,
dtHoracoleta date,
empresa VARCHAR (100),
diaVendo DATE,
vidaUtil INT
); auto-increment (1)

INSERT INTO (idSensor, tipoSensor, serie, dtHoracoleta, empresa, diaVendo, vidaUtil) VALUES
(null, 'TEMP', NOT NULL, 1990-01-12, 'Ben e Oli LTDA', 1990-03-01),
(null, 'MOVI', NOT NULL, 1990-01-12, 'Ben e Oli LTDA', 1990-03-01),
(null, 'TEMP', NOT NULL, 1990-01-12, 'Airoa', 1990-03-01),
(null, 'MOVI', NOT NULL, 1990-01-12, 'Airoa', 1990-03-01),
(null, 'TEMP', NOT NULL, 1990-01-12, 'BENN', 1990-03-01),
(null, 'MOVI', NOT NULL, 1990-01-12, 'BENN', 1990-03-01),
(null, 'TEMP', NOT NULL, 1990-01-12, 'Carolsport', 1990-03-01),
(null, 'MOVI', NOT NULL, 1990-01-12, 'Carolsport', 1990-03-01),
(null, 'TEMP', NOT NULL, 1990-01-12, 'Raiman LTDA', 1990-03-01),
(null, 'MOVI', NOT NULL, 1990-01-12, 'Raiman LTDA', 1990-03-01);

SELECT * FROM Sensores;
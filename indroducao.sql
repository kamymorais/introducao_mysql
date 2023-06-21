CREATE DATABASE atividade_sql;
USE atividade_sql;

CREATE TABLE atividade_sql (
nome VARCHAR (50),
idade INT (2) ,
telefone VARCHAR (20) ,
endereco VARCHAR (50) ,
email VARCHAR (50) 
);

DESC atividade_sql ; 

INSERT INTO atividade_sql VALUES ( "THÉO", 10 , "61999875001", "RIACHO FUNDO 2, DF, BRASÍLIA ", "theo@hotmail.com"),
( "KAMYLLA", 20 , "61999875002", "RIACHO FUNDO 2, DF, BRASÍLIA", null),
( "MARLUCIA", 30 , "61999875003", "RIACHO FUNDO 2, DF, BRASÍLIA", "marlucia@hotmail.com"),
( "ADEMIR", 40 , "61999875004", "RIACHO FUNDO 3, DF, BRASÍLIA", "ademir@hotmail.com"),
( "HERCULLES", 50 , "61999875005", "RIACHO FUNDO 3, GO , GOIÂNIA", "herculles@hotmail.com"),
( "PRISCILA", 60 , "61999875006", "RIACHO FUNDO 4, GO , GOIÂNIA", "priscila@hotmail.com"),
( "MILENA", 70 , null, "RIACHO FUNDO 4, GO , GOIÂNIA", "milena@hotmail.com"),
( "ATAMOM", 80 , "61999875008", "RIACHO FUNDO 4, GO , GOIÂNIA", "atamom@hotmail.com"),
( "LUCK", 90 , "61999875009", "RIACHO FUNDO 5, DF, BRASÍLIA", "luck@hotmail.com"),
( "LUNA", 93 , "61999875010", "RIACHO FUNDO 5, DF, BRASÍLIA", "luna@hotmail.com"),
( "DEX", 96 , "61999875011", "RIACHO FUNDO 5, DF, BRASÍLIA", "dex@hotmail.com");

SELECT * FROM atividade_sql ; 
SELECT * FROM atividade_sql  WHERE endereco LIKE "%DF%" and idade > 18;
INSERT INTO atividade_sql VALUES ( "THÉO", 10 , "61999875033", "RIACHO FUNDO 2", "theo@hotmail.com");
SELECT * FROM atividade_sql ; 

#LIKE COM % É PARA FILTRAR UMA PARTE 
SELECT COUNT(*) FROM atividade_sql WHERE endereco LIKE "%RIACHO FUNDO 3%" ; 
SELECT * FROM atividade_sql WHERE idade = 30 ; 

#O CÓDIGO ABAIXO É PARA APAGAR A TABELA 
DROP TABLE atividade_sql;

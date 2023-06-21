CREATE DATABASE atividade_sql;
USE atividade_sql;

CREATE TABLE atividade_sql (
nome VARCHAR (50),
idade INT (2) ,
telefone VARCHAR (10) ,
endereco VARCHAR (50) ,
email VARCHAR (50) 
);

DESC atividade_sql ; 

INSERT INTO atividade_sql VALUES ( "THÉO", 10 , "61999875001", "RIACHO FUNDO 2", "theo@hotmail.com"),
( "KAMYLLA", 20 , "61999875002", "RIACHO FUNDO 2", "kamylla@hotmail.com"),
( "MARLUCIA", 30 , "61999875003", "RIACHO FUNDO 2", "marlucia@hotmail.com"),
( "ADEMIR", 40 , "61999875004", "RIACHO FUNDO 3", "ademir@hotmail.com"),
( "HERCULLES", 50 , "61999875005", "RIACHO FUNDO 3", "herculles@hotmail.com"),
( "PRISCILA", 60 , "61999875006", "RIACHO FUNDO 4", "priscila@hotmail.com"),
( "MILENA", 70 , "61999875007", "RIACHO FUNDO 4", "milena@hotmail.com"),
( "ATAMOM", 80 , "61999875008", "RIACHO FUNDO 4", "atamom@hotmail.com"),
( "LUCK", 90 , "61999875009", "RIACHO FUNDO 5", "luck@hotmail.com"),
( "LUNA", 93 , "61999875010", "RIACHO FUNDO 5", "luna@hotmail.com"),
( "DEX", 96 , "61999875011", "RIACHO FUNDO 5", "dex@hotmail.com");

SELECT * FROM atividade_sql ; 
SELECT * FROM atividade_sql pessoapessoaWHERE endereco = "RIACHO FUNDO 2" and idade > 18;
INSERT INTO atividade_sql VALUES ( "THÉO", 10 , "61999875033", "RIACHO FUNDO 2", "theo@hotmail.com");
SELECT * FROM atividade_sql ; 
SELECT COUNT(*) FROM atividade_sql WHERE endereco = "RIACHO FUNDO 3"  ; 
SELECT * FROM atividade_sql WHERE idade = 30 ; 


/*
1)) Para criar um banco de dados utilizar o comando CREATE DATABASE + nome do banco, depois utilizar o comando USE + nome do banco de dados. 
Para criar uma tabela, utilizar o comando CREATE TABLE + nome da tabela (. 
Incluir os dados com o tipo e quantidade de caracteres da tabela, exemplo nome VARCHAR (50).
Para incluir dados na tabela, utilizar o código DESC + nome da tabela (descreve a tabela e quantidade de caracteres que podem ser incluidos 
Utilizar o código INSERT INTO + nome da tabela VALUES ( "THÉO", 10 , "61999875001", "RIACHO FUNDO 2, DF, BRASÍLIA ", "theo@hotmail.com") - a vírgula separa a informação que será inclusa 
na próxima coluna da tabela. 
Para consultar dados da tabela, utilizar o código SELECT * FROM + nome da tabela. 

2)) - SELECT COUNT(*): Contar os dados selecionados. 
UPDATE: atualizar informação da tabela (trocar dados).
ALTER TABLE: Alterar o nome da coluna.
DROP TABLE : Apaga a tabela. */  

CREATE DATABASE produto ;
USE produto ;


CREATE TABLE informacao_produto (

descrição VARCHAR (50),
unidade_medida VARCHAR (5) ,
valor_unitario DOUBLE ,
quantidade INT (2)

);
DESC informacao_produto ; 
INSERT INTO informacao_produto  VALUES ("Caneta", "Und" , 1.50 , 2),
("Lápis", "Und", 2.30 , 10 ), 
("Borracha", "Und" , 0.50 , 25 ),
("Marca texto" , "Und" , 3.25 , 50 ),
("Caderno" , "Und" , 15.99 , 35 );

ALTER TABLE informacao_produto RENAME COLUMN descrição to descricao; 

SELECT * FROM informacao_produto; 

SELECT CONCAT ("Há " , quantidade ," " ,  descricao , " no estoque, com o valor unitário de R$ " , valor_unitario) AS produto FROM informacao_produto; 







 





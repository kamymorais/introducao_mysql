/* NORMALIZAÇÃO DE TABELA 
Para que uma tabela esteja na 1FN é necessário que não existam grupo de valores repetidos, seus valores devem ser todos atomicos (únicos), exemplo nome e sobrenome e a tabela deve possuir 
um identificador que identifique o dado como único
*/

CREATE DATABASE normalizacao ;
USE normalizacao ;

CREATE TABLE pessoa (
id INTEGER PRIMARY KEY AUTO_INCREMENT , 
nome VARCHAR (50) ,
sobrenome VARCHAR (50), 
idade int (2) ,
sexo VARCHAR (15) ,
email VARCHAR (100),
cpf VARCHAR (20) NOT NULL UNIQUE, 
cidade VARCHAR (50),
estado VARCHAR (50),
uf VARCHAR (2),
bairro VARCHAR (50),
cep VARCHAR (11),
complemento VARCHAR (50),
logradouro VARCHAR (50),
numero VARCHAR (10),
ddd VARCHAR (3),
telefone CHAR (16), 
celular VARCHAR (50),
fixo VARCHAR (50),
comercial VARCHAR (50)
);

DESC pessoa ;

INSERT INTO pessoa VALUES (null, "Kamylla" , "Morais", 26 , "feminino" , "kmviana@hotmail.com", "050.104.391-82" , "Brasília" , "Distrito Federal" , "DF" , "Riacho Fundo II" , "71881-122" , 
"Casa" , "QN" , "07" , "061" , "3333-4653" , " 9 9871-5322" , "3333-4311" , null ),
(null, "Herculles" , "Morais", 21 , "masculino" , "dk@hotmail.com", "059.204.391-82" , "Brasília" , "Distrito Federal" , "DF" , "Riacho Fundo II" , "71881-123" , 
"Casa" , "QC" , "03" , "061" , "3333-4653" , " 9 9618-5006" , null , null );

SELECT * FROM pessoa ; 


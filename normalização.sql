
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

# Para está na segunda forma nominal os atributos devem depender da chave primaria em sua totalidade, não apenas parte dela
#Interação com duas tabelas... 

CREATE TABLE endereco (
idEndereco INTEGER PRIMARY KEY AUTO_INCREMENT ,
cep VARCHAR (13),
bairro VARCHAR (100),
cidade VARCHAR (100),
uf VARCHAR (2)
);

CREATE TABLE pessoa2 (
idPessoa INTEGER PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR (50),
sobrenome VARCHAR (50),
cpf VARCHAR (14) NOT NULL UNIQUE ,
sexo VARCHAR (10) ,
id_endereco INTEGER ,
#FORMALIZANDO AS DUAS TABELAS
CONSTRAINT fk_id_endereco_endereco FOREIGN KEY (id_endereco) REFERENCES endereco (idEndereco)
);

INSERT INTO endereco VALUES 
(null , "71.881-123" , "Riacho Fundo 02" , "Brasília" , "DF" ),
(null , "71.881-129" , "Riacho Fundo 02" , "Brasília" , "DF" ),
(null , "71.881-135" , "Riacho Fundo 02" , "Brasília" , "DF" ),
(null , "71.881-999" , "Riacho Fundo 02" , "Brasília" , "DF" );

INSERT INTO pessoa2 VALUES
(null , "Herculles" , "Morais" , "059.457.331-99" , "masculino", 1 ) ,
(null, "Marlucia" , "Viana" , "393.077.395-98" , "feminino" , 2) ,
(null, "Ademir" , "Viana" , "245.070.855.97" , "masculino" , 3) ,
(null, "Théo" , "Viana" , "059.458.332-85" , "masculino" , 4) ;

# Mostrar as duas tabelas 

SELECT * FROM endereco INNER JOIN pessoa2 on endereco.idEndereco = pessoa2.id_endereco ;

CREATE TABLE telefone (
idTelefone INTEGER PRIMARY KEY AUTO_INCREMENT ,
ddd VARCHAR (3),
numero VARCHAR (15),
id_pessoa INTEGER ,
#Fazer referência para tabela pessoa para adicionar mais de um número para um pessoa
CONSTRAINT fk_id_pessoa_pessoa FOREIGN KEY (id_pessoa) REFERENCES pessoa2 (idPessoa)
);

INSERT INTO telefone VALUES (null, "061" , " 9 9987-5006" , 1),
(null, "061" , " 9 9987-5006" ,2),
(null, "061" , " 9 9987-5005",3),
(null, "061" , " 9 9987-5005",4),
(null, "061" , " 9 9987-5004",4);

SELECT * FROM endereco ;
SELECT * FROM pessoa2; 


 
/* Para a tabela está na 3fn ela precisa está de acordo com a 1 e 2FN, não existir dependentes transitivos. 
Nenhum atributo não chave não pode depender de outro atributo não chave. */ 

CREATE TABLE produto (
idProduto INTEGER PRIMARY KEY AUTO_INCREMENT ,
nome_produto VARCHAR (50),
quantidade INT,
valor DOUBLE
);

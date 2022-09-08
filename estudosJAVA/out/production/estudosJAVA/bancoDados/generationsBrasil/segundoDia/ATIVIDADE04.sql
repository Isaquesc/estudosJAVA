CREATE DATABASE CIDADE_CARNE;
USE CIDADE_CARNE;

CREATE TABLE CATEGORIA(
	
    ID BIGINT(5) AUTO_INCREMENT,
    DESCRICAO VARCHAR(255) NOT NULL,
    ATIVO BOOLEAN NOT NULL,
    PRIMARY KEY (ID)
    
);

CREATE TABLE PRODUTOS(

	ID BIGINT(5) AUTO_INCREMENT,
    NOME VARCHAR(255) NOT NULL,
    PRECO DECIMAL(6,2) NOT NULL,
    QUANTIDADE_PRODUTO INT NOT NULL,
    CATEGORIA_ID BIGINT,
    PRIMARY KEY (ID),
    FOREIGN KEY (CATEGORIA_ID) REFERENCES CATEGORIA(ID)
    
);

INSERT CATEGORIA (DESCRICAO, ATIVO)
VALUES  ("BOVINO",TRUE),
		("SUINO",TRUE),
        ("AVES",TRUE),
        ("PERTENCE FEIJOADA",TRUE),
        ("IMBUTIDOS",TRUE),
        ("OUTROS",TRUE);
        
INSERT PRODUTOS (NOME,PRECO,QUANTIDADE_PRODUTO,CATEGORIA_ID)
VALUES	("ASA",40.00,30,3),
		("PICANHA",20.00,30,1),
        ("COXA DE FRANGO",20.00,30,3),
        ("BACON",30.00,30,1),
        ("HAMBURGUER",60.00,30,5),
        ("CUPIM",20.00,30,1),
        ("PEITO DE FRANGO",25.00,30,3),
        ("ORELHA DE PORCO",20.00,30,4),
        ("SALAME",18.00,30,5),
        ("MEDALHAO",50.00,30,3),
        ("MOCOTO",20.00,30,2),
        ("CHULETA",20.00,30,1);
        
        
SELECT * FROM PRODUTOS
WHERE PRECO > 20;

SELECT * FROM PRODUTOS
WHERE PRECO BETWEEN 20 AND 60; 

SELECT * FROM PRODUTOS
WHERE NOME LIKE "C%";

-- INNER JOIN
SELECT P.NOME, P.PRECO, P.QUANTIDADE_PRODUTO AS QTD, C.DESCRICAO 

			FROM PRODUTOS AS P
			INNER JOIN CATEGORIA AS C 
			ON C.ID = P.CATEGORIA_ID;

-- SELECT ESPECIFICO
SELECT P.NOME, P.PRECO FROM PRODUTOS AS P

			INNER JOIN CATEGORIA AS C 
			ON C.ID = P.CATEGORIA_ID
			WHERE P.PRECO > 20;
        
        
        
        
        
        
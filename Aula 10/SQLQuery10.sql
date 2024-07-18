-- Criando parte das tabelas do banco oficina

USE aula_db

DROP TABLE IF EXISTS tbl_Clientes;
CREATE TABLE tbl_Clientes (
	idCliente INT,
	nomeCliente VARCHAR(50),
	dataNascimento DATE,
	sexo CHAR(1)
)


DROP TABLE IF EXISTS tbl_Carros;
CREATE TABLE tbl_Carros (
	nomeFabricante VARCHAR(50),
	nomeModelo VARCHAR(50),
	anoModelo INT,
	nomeCliente VARCHAR(50),
	idCliente INT
)

-- inserindo dados
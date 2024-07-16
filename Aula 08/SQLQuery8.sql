
-- criando tabela sql;
USE aula_db;

DROP TABLE IF EXISTS tbl_pessoas;

CREATE TABLE tbl_pessoas (
	idPessoa INT,
	namePessoa VARCHAR(50),
	dateNascimento DATE

);

-- Inserindo dados

/*
INSERT INTO tbl_pessoas VALUES (1, 'Zurubabel', '1987-11-15');

 INSERT INTO tbl_pessoas (idPessoa, dateNascimento, namePessoa)
VALUES
	(1,'1990-10-08', 'Babelina' );
*/

INSERT INTO tbl_pessoas (idPessoa, namePessoa, dateNascimento)
VALUES (3, 'Jailson', '1982-01-03' );

SELECT 
	*
FROM
	tbl_pessoas
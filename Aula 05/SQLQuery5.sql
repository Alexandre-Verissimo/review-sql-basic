DECLARE
	@MEDIA FLOAT,
	@QUANTIDADE INT,
	@SOMA FLOAT

-- Atribuição de variáveis (jeito 1)

SET @MEDIA = ROUND((SELECT AVG(petal_length) FROM tbl_iris), 2)

SELECT @MEDIA

-- Jeito 2

SELECT
	@MEDIA = AVG(petal_length),
	@QUANTIDADE = COUNT(petal_length)
FROM
	tbl_iris
	 
SELECT @MEDIA AS MEDIA, @QUANTIDADE AS QTD

-- Desvio padrão

SELECT
	SQRT(SUM(POWER((petal_length - @MEDIA), 2)) / (@QUANTIDADE - 1)) AS Desvio_nosso
FROM
	tbl_iris


-- hipotenusa ficticia

SELECT SQRT(( POWER(@MEDIA, 2) + POWER(@QUANTIDADE, 2))) AS HIPOTENUSA

-- Pela função nativa do sql

SELECT
	STDEV(petal_length) as SQL_DP
FROM
	tbl_iris
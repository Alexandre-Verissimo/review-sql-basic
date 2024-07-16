-- Calculos booleanos retornam sempre resultado booleanos. Uma demonstração disso pode ser visto a baixo.

SELECT
	*
FROM
	tbl_iris
WHERE
	NOT (class <> 'Iris-setosa')
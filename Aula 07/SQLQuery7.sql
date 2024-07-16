-- Veja que isso não retornará nada, pois não existe petal_length menor que 1

SELECT
	*
FROM
	tbl_iris
WHERE
	class = 'Iris-virgininica'
	AND (petal_width >= 2 OR sepal_lenght > 3)
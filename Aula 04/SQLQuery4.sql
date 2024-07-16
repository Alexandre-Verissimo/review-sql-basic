/*
	Operadores Condicionais
	> - Maior
	>= - Maior igual
	< - Menor
	<= - Menor igual
	<> - Diferente
	= - Igual

	Operadores Lógicos
	AND - E
	OR - OU
	NOT - NÃO
*/

SELECT 
	class AS CLASSE_PETALA,
	sepal_lenght AS PETALA_LARGURA
FROM
	tbl_iris
WHERE
	class = 'Iris-setosa' AND
	petal_length > 1.3

-- Caso eu queira fazer um select onde não apareça a iris-versicolor

/* SELECT 
	class AS CLASSE_PETALA,
	sepal_lenght AS PETALA_LARGURA
FROM
	tbl_iris
WHERE
	class = 'Iris-setosa' AND
	class = 'Iris-virginica' AND
	petal_length > 1.3

Em tese isso poderia funcionar, mas não irá. Pois, no momento em que se faz um and class duas vezes, 
o que na real o sql entender é que a consulta deve retornar um os campos onde tenham as duas ao mesmo tempo.
É como se pra o sql, ele etendesse que tem que trazer um class de planta onde seja Iris-setosa e Iris-virgininica 
ao mesmo tempo e isso é impossível.

Já se for utilizar o or, lembrar de usar parenteses para que junto com o and não ocorra equivocos no calculo booleana do sql.
*/

SELECT
	*
FROM
	tbl_iris
WHERE
	(class = 'Iris-setosa'
	OR class = 'Iris-virginica')
	AND petal_length >= 1.3

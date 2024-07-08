SELECT -- O que? (Quais ser�o os dados)
	sepal_lenght AS SEPALA_LARGURA,
	sepal_width AS SEPALA_COMPRIMENTO,
	petal_length PETALA_LARGURA,
	petal_width PETALA_COMPRIMENTO,
	class AS CLASSE
FROM -- Onde? (Quais s�o as tabelas que eu irei bscar os dados)
	tbl_iris
WHERE -- Como? (Quais s�o as regras da minha sele��o)
	class = 'Iris-versicolor'
	AND sepal_width > 2.1
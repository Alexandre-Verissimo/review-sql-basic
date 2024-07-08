-- # Fun��es de Argupamento e o Uso de Group By
-- Dados Qualitativos (Categ�rico)
	-- Dados qualitativos s�o aqueles dados que n�o mensur�veis por si s�. S�o dados de caracter�stica. Por exemplo: Cor da pele, Gen�ro, Cor de Cabelo e etc.
-- Dados Quantitativos (Num�rico)
	-- J� os dados quantitativos s�o aqueles dados que mensuram por si s�. Idade, Altura, Peso, quantidade de vendas e etc.
-- A priori, dados quantitativos podem ser calculados, enquanto que dados qualitativos n�o.


/*
SELECT -- O que? (Quais ser�o os dados)
	sepal_lenght AS SEPALA_LARGURA,
	sepal_width AS SEPALA_COMPRIMENTO,
	petal_length AS PETALA_LARGURA,
	petal_width AS PETALA_COMPRIMENTO,
	class AS CLASSE
FROM -- Onde? (Quais s�o as tabelas que eu irei bscar os dados)
	tbl_iris
WHERE -- Como? (Quais s�o as regras da minha sele��o)
	class = 'Iris-versicolor'
	AND sepal_width > 2.1
*/

-- Vamos se fazer a pergunta: Como eu iria medir o comprimento total das sepalas?

SELECT
	class,
	ROUND(SUM(sepal_lenght),2) AS SEPALA_COMPRIMENTO, -- SUM � uma fun��o de agrega��o que soma todos os valores da coluna
	ROUND(AVG(sepal_lenght),2) AS SEPALA_MEDIA_COMPRIMENTO, -- AVG � uma fun��o que mostra a m�dia
	COUNT(sepal_lenght) AS SEPALA_QUANTIDADE -- COUNT � uma fun��o que mostra a quantidade
FROM
	tbl_iris
GROUP BY
	class

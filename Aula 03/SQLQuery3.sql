-- # Funções de Argupamento e o Uso de Group By
-- Dados Qualitativos (Categórico)
	-- Dados qualitativos são aqueles dados que não mensuráveis por si só. São dados de característica. Por exemplo: Cor da pele, Genêro, Cor de Cabelo e etc.
-- Dados Quantitativos (Numérico)
	-- Já os dados quantitativos são aqueles dados que mensuram por si só. Idade, Altura, Peso, quantidade de vendas e etc.
-- A priori, dados quantitativos podem ser calculados, enquanto que dados qualitativos não.


/*
SELECT -- O que? (Quais serão os dados)
	sepal_lenght AS SEPALA_LARGURA,
	sepal_width AS SEPALA_COMPRIMENTO,
	petal_length AS PETALA_LARGURA,
	petal_width AS PETALA_COMPRIMENTO,
	class AS CLASSE
FROM -- Onde? (Quais são as tabelas que eu irei bscar os dados)
	tbl_iris
WHERE -- Como? (Quais são as regras da minha seleção)
	class = 'Iris-versicolor'
	AND sepal_width > 2.1
*/

-- Vamos se fazer a pergunta: Como eu iria medir o comprimento total das sepalas?

SELECT
	class,
	ROUND(SUM(sepal_lenght),2) AS SEPALA_COMPRIMENTO, -- SUM é uma função de agregação que soma todos os valores da coluna
	ROUND(AVG(sepal_lenght),2) AS SEPALA_MEDIA_COMPRIMENTO, -- AVG é uma função que mostra a média
	COUNT(sepal_lenght) AS SEPALA_QUANTIDADE -- COUNT é uma função que mostra a quantidade
FROM
	tbl_iris
GROUP BY
	class

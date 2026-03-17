-- Exercício 1) Qual o total de vendas por ano, considerando a tabela tb_vendas?


SELECT 
	EXTRACT (YEAR FROM "Data") AS ano,
	sum("Valor") AS total_vendas
FROM
	tb_vendas
GROUP BY
	ano
ORDER BY 
	ano;

-- Exercício 2) Qual o total de vendas por vendedor no ano de 2018, considerando a tabela tb_vendas?

SELECT
	EXTRACT(YEAR FROM "Data") AS ano,
	COUNT(*) AS qtt_Vendas
FROM tb_vendas
GROUP BY
	ano
HAVING
	EXTRACT(YEAR FROM "Data") = 2018;



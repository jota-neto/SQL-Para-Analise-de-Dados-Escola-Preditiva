/*
	Funções de Agregação:
		Computam um único valor para um conjunto de múltipla linhas.
		soma, máximo, mínimo.
	Pode-se usas essas funções para realizar cálculos de medidas resumo de variáveis quantitativas.
 */

-- Ex:

/*
 Quais são as medidas resumo da variável quantidade na base de vendas de ecommerce
 */

SELECT 
	count(*) AS qtde_linhas,
	count(quantity) AS qtde_linhas_nao_nulas,
	-- Medidas de Posição:
	MIN(quantity) AS min_qtde, -- Mínimo
	AVG(quantity) AS media_qtde,-- Média
	MAX(quantity ) AS max_qtde,-- Máximo
	-- Medidas de Dispersão:
	stddev(quantity) AS desvio_padrao_qtde,-- Desvio Padrão
	variance(quantity ) AS variancia_qtde-- Variância
FROM 
	tb_ecommerce_sales


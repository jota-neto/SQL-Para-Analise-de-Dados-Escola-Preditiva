/*
  COUNT(*) ou COUNT(1): Conta todas as linhas da tabela, incluindo aquelas com valores NULL (nulos) ou duplicados. 
 Ele conta a existência da linha.
 */

/*
 COUNT(nome_coluna): Conta apenas os valores NÃO NULOS naquela coluna específica.
  Se uma linha tiver NULL na coluna especificada, ela será ignorada na contagem.
 */
/*
 COUNT(DISTINCT nome_coluna): Conta apenas valores não nulos e únicos.
 */


/*quantas vendas foram realizadas pelo ecommerce de roupas?*/

SELECT 
	count(order_id) AS qtde_linhas,
	count(*) AS qtde_linhas_1,
	count(1) AS qtde_linhas_2,
	count(size) AS linhas_nao_nulas
FROM 
	tb_ecommerce_sales;

SELECT 
	order_id,
	size
FROM 
	tb_ecommerce_sales
WHERE 
	SIZE IS NULL;

-- Aplicação:
-- Quantas camisas da cor "Dark Blue" foram vendidas?

SELECT 
	order_id,
	color,
	CASE 
		WHEN color = 'Dark Blue' THEN color 
	END	AS resultado_consultado
FROM 
	tb_ecommerce_sales;

SELECT 
	count(order_id),
	count(CASE 
		WHEN color = 'Dark Blue' THEN color 
	END	) AS qtde_vendida
FROM 
	tb_ecommerce_sales

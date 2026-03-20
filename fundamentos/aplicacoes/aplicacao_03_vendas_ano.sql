/*
 Aplicação 3: Total de vendas por ano
 
 	Utilizando o schema db_star_sales, verifique a quantidade de vendas realizadas por ano.
 
 */

SELECT
	t.time_year,
	sum(s.transaction_amount) as total_transaction
FROM
	db_star_sales.sales s 
	JOIN 
		db_star_sales."time" t 
		ON s.time_id  = t.time_id 
GROUP BY 
	t.time_year
ORDER  BY 
	t.time_year;
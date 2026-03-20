/*
 Exercício 1:
 	Considerando o schema db_star_sales e utilizando as tabelas 'sales' e 'time', 
 crie uma consulta SQL que exiba  o ID do produto, valor da transação, o ano, o mês e o dia da transação
   
*/

SELECT 
	s.product_id  AS id_prduto,
	s.transaction_amount AS valor_total,
	t.time_year AS ano,
	t.time_month AS mes,
	t.time_day AS dia
FROM 
	db_star_sales.sales s
	JOIN db_star_sales."time" t
		ON s.time_id  = t.time_id;
		
SELECT 
	t.*
FROM 
	db_star_sales."time" t;

/*
 Exercício 2:
 	Considerando o schema db_star_sales e utilizando as tabelas 'sales' e 'time', 
 	crie uma consulta SQL que exiba  o ID do produto, valor da transação, o ano,
 	o mês e o dia da transação para o ano de 2015.  
*/

SELECT 
	s.product_id  AS id_prduto,
	s.transaction_amount AS valor_total,
	t.time_year AS ano,
	t.time_month AS mes,
	t.time_day AS dia
FROM 
	db_star_sales.sales s
	JOIN db_star_sales."time" t
		ON s.time_id  = t.time_id AND time_year = 2015;

/*
 Exercício 3:
 	Considerando o schema db_star_sales crie uma consulta que traga o nome dos produtos e região vendida,
bem como o id e o valor da transação.
*/
SELECT 
	s.product_id,
	p.product_name,
	r.region_name,
	s.transaction_amount 
FROM 
	db_star_sales.sales s 
	INNER JOIN db_star_sales.products p 
		ON s.product_id = p.product_id 
	INNER JOIN db_star_sales.regions r 
		ON s.region_id  = r.region_id;

/*
 Exercício 4:
 	Liste as vendas na região de Portugal no ano de 2016, considerando o schema db_star_sales
*/

SELECT 
	s.*,
	r.region_name,
	t.time_year 	
FROM 
	db_star_sales.sales s
	INNER JOIN db_star_sales.regions r
		ON s.region_id  = r.region_id 
	INNER JOIN  db_star_sales."time" t
		ON s.time_id = t.time_id
WHERE 
    r.region_name = 'Portugal'
    AND t.time_year = 2016;


/*
 Exercício 5:
 	Liste as vendas no Brasil a partir de 2015, considerando o schema db_star_sales
*/
SELECT 
	s.*,
	r.region_name,
	t.time_year 	
FROM 
	db_star_sales.sales s
	INNER JOIN db_star_sales.regions r
		ON s.region_id  = r.region_id 
	INNER JOIN  db_star_sales."time" t
		ON s.time_id = t.time_id
WHERE
	r.region_name = 'Brazil'
	AND t.time_year >= 2015
/*
 Exercício 6:
 	Liste as vendas no Brasil no ano de 2016 e ordene a consulta da maior para a menor transação
*/
	
	
SELECT
 	s.*
FROM 
 	db_star_sales.sales s
 	INNER JOIN db_star_sales.regions r 
 		ON s.region_id = r.region_id
 	INNER JOIN db_star_sales.time t
 		ON s.time_id = t.time_id
WHERE
	r.region_name = 'Brazil'
	AND t.time_year = 2016
ORDER BY
	s.transaction_amount DESC;
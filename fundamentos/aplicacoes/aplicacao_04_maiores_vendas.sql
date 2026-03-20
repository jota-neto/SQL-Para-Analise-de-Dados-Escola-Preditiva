/*
 Aplicação 4: Regiões com maiores vendas em um dia da semana
 
 	Utilizando o schema db_star_sales, desenvolva uma consulta SQL que recupere as 3 regiões 
 com os maiores valores totais de transação às terças feiras. 
 	Apresente os nomes das regiões e seus respectivos valores financeiro totais de vendas.
 
 */

SELECT
    r.region_name,
    SUM(s.transaction_amount) AS total_transaction
FROM db_star_sales.sales s 
JOIN db_star_sales.regions r 
    ON s.region_id = r.region_id 
JOIN db_star_sales."time" t 
    ON s.time_id = t.time_id 
WHERE 
    t.time_day_of_week = 3 
GROUP BY 
    r.region_name
ORDER BY 
    total_transaction DESC 
LIMIT 3;
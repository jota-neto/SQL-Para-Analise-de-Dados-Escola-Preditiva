/*
 Aplicação 1: Analisando comportamento das vendas por dia da semana
 
 	Compreender os padrões de vendas durante dias específicos da semana auxilia no planejamento de promoções.
 Formule uma consulta que obtenha o número total de vendas realizadas às segundas-feiras em todos os anos disponíveis
 utilizando as tabelas 'sales' e 'time' do schema db_star_sales.
 
 */

SELECT 
	sum(transaction_amount) AS total_vendas_segunda_feira
FROM 
	db_star_sales.sales s 
	LEFT JOIN db_star_sales.time t
		ON s.time_id = t.time_id
WHERE
	t.time_day_of_week = 2
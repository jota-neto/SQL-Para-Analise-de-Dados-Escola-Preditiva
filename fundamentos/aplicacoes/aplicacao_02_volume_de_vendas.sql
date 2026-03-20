/*
Aplicação 2: Produtos com maiores volumes de vendas
 
 		Utilizando as tabelas 'sales' e 'products' do schema db_star_sales, 
 	construa uma consulta SQL que identifique os 5 produtos com os maiores valores de transação. 
 		Mostre os nomes dos produtos e seus respectivos valores totais de transação.
 
 */
SELECT
	p.product_name,
	sum(s.transaction_amount) as total_transaction
FROM
	db_star_sales.sales s 
	join db_star_sales.products p 
		on s.product_id = p.product_id
GROUP BY 
	p.product_name
ORDER  BY 
	sum(s.transaction_amount) desc
LIMIT 
	5
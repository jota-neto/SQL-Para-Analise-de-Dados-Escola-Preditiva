/* 
 Você trabalha em uma loja e deseja verificar, 
 para cada venda realizada, quem comprou, 
 que produto comprou, quantidade comprada 
 e ordenadas da menor venda para maior
 */
SELECT 
	customer_name  AS nome_cliente,
	product_name AS nome_produto,
	quantity AS quantidade,
	sales AS vendas
FROM 	
	tb_store_sales
ORDER BY 
	sales DESC NULLS FIRST;  -- Os valores nulos aparecem primeiro
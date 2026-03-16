/*
Você trabalha em uma loja e deseja verificar,
para cada venda realizada, quem comprou, 
que produto comprou, a quantidade comprada , 
se teve ou não desconto e o valor do desconto em unidades monetárias 
*/

SELECT 
	customer_name AS nome_cliente,
	product_name AS nome_produto,
	quantity AS quantidade,
	discount AS desconto,
	sales AS vendas,
	discount != 0 AS teve_desconto,
	sales * discount AS valor_desconto
FROM 
	tb_store_sales

	
SELECT 
	customer_name AS nome_cliente,
	product_name AS nome_produto,
	quantity AS quantidade,
	discount AS desconto,
	sales AS vendas,
	CASE 
		WHEN discount != 0 THEN 'com_desconto'
	ELSE 'sem_desconto'
	END  AS teve_desconto,	
	sales * discount AS valor_desconto
FROM 
	tb_store_sales

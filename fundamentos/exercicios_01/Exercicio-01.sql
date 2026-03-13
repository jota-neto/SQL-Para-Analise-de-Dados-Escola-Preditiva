-- Exercício 1) 
-- Considere o conjunto de dados tb_store_sales. Você deve recuperar informações básicas sobre os pedidos. 
-- Escreva uma consulta SQL usando apenas as cláusulas SELECT e FROM para exibir as seguintes colunas:

-- ID do Pedido
-- Data do Pedido
-- Nome do Cliente
-- Nome do Produto
-- Quantidade

SELECT 
	*
FROM 
	tb_store_sales tss
LIMIT 10;

SELECT 
	order_id AS id_pedido,
	order_date AS data_pedido,
	customer_name AS nome_cliente,
	product_name AS nome_produto,
	quantity AS quantidade
FROM 
	tb_store_sales;
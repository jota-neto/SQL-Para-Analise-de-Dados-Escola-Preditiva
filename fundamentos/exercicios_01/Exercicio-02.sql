-- Exercício 2) 
-- Considere o conjunto de dados tb_store_sales. 
-- Escreva uma consulta SQL usando apenas as cláusulas SELECT e FROM para recuperar as seguintes informações:

-- ID do Pedido
-- Modo de Envio
-- Vendas

SELECT 
	*
FROM
	tb_store_sales;

SELECT 
	order_id AS id_pedido,
	ship_mode AS modo_envio,
	sales AS vendas
FROM
	tb_store_sales;
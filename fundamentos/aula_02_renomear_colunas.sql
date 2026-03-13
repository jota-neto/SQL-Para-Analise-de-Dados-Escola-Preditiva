/*
* O que eu quero saber? 
Nome do Cliente (customer_name)
Nome do Produto (product_name)
Quantidade Vendida (quantity)

* Onde está esta informação?
Está no banco de dados da empresa na tabela tb_store_sales
*/

SELECT 
	customer_name AS nome_cliente,
	product_name AS nome_produto,
	quantity AS quantidade
FROM	
	tb_store_sales;
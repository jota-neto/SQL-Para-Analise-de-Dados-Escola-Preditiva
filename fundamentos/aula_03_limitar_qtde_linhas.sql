/*
	 Você trabalha em um e-comerce de blusas e deseja verificar,
	 para cada pedido o que foi comprado, quando e a quantidade vendida.
 
 */

SELECT 
	*
FROM 
	tb_ecommerce_sales
LIMIT 10;


SELECT 
	order_id,
	sku ,
	order_date AS data_compra,
	quantity AS qtde,
	"size" AS tamanho
FROM
	tb_ecommerce_sales
LIMIT 10;


SELECT 
	order_id,
	sku ,
	order_date AS data_compra,
	quantity AS qtde,
	"size" AS tamanho  -- como o SIZE é uma palavra reservada usa-se " ".
FROM
	tb_ecommerce_sales
OFFSET 10;  -- O comando OFFSET mostra o restante da tabela, excluindo as 10 primeiras linhas.



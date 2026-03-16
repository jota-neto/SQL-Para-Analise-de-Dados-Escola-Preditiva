/*
Você trabalha em uma loja e deseja verificar,
para cada venda realizada da CATEGORIA DE PRODUTOS DE TECNOLOGIA, 
quem comprou,
que produto comprou e 
a quantidade comprada

*/

SELECT 
	customer_name  AS nome_cliente,
	product_name  AS nome_produto,
	quantity  AS quantidade,
	category AS categoria
FROM 
	tb_store_sales
WHERE 
	category = 'Technology';
	
	
/*
 Você trabalha em uma loja e deseja verificar, 
 para cada venda realizada, quem comprou, 
 que produto comprou e a 
 quantidade comprada 
 nas vendas com desconto

 */
SELECT 
	customer_name  AS nome_cliente,
	product_name  AS nome_produto,
	quantity  AS quantidade,
	discount AS desconto
FROM 
	tb_store_sales tss 
WHERE 
	discount > 0;

/*
 Você trabalha em uma loja e deseja verificar, 
para cada venda realizada, quem comprou,
que produto comprou e a 
quantidade comprada nas vendas 
com prioridade elevada.
 */

SELECT 
	customer_name  AS nome_cliente,
	product_name  AS nome_produto,
	quantity  AS quantidade,
	order_priority AS prioridade
FROM 
	tb_store_sales tss 
WHERE 
	--order_priority = 'High';
	order_priority LIKE 'H%'  
/* 
 LIKE é o oprerador que permite criar condições mais sofisticadas.
 Ou seja, podemos filtar o texto por partes, seja ele começo,meio ou fim.
 EX:
 	WHERE customer_name LIKE 'Eugene%'    Código começa com..
 	WHERE ship_mode LIKE '%class%'		  Código termina com..	
 	WHERE product_id LIKE '%-NOV-%'		  Código contém..
 	
  */



/*
Você trabalha em uma loja e deseja verificar, 
para cada venda realizada, quem comprou, 
que produto comprou e a 
quantidade comprada 
nas realizadas no Brasil ou na Argentina

 */

SELECT 
	customer_name  AS nome_cliente,
	product_name  AS nome_produto,
	quantity  AS quantidade,
	country AS pais
FROM 
	tb_store_sales tss 
WHERE 
	country IN ('Brazil', 'Argentina');
	
/*
 Quando temos mais de um valor, numerico ou texto, que queremos utilizar como filtro,
 podemos utilizar o oprerador IN.
 */

/*
 Nas situações em que o critério de exclusão é mais simples do que o de inclusão no resultado, 
 podemos utilizar o operador NOT. Ele inverte o efeito lógico dos operadores utilizados.
 */

/*
 Quando queremos filtras valores NULOS, VERDADEIROS ou FALSOS, usamos IS NULL, IS TRUE, IS FALSE
 */

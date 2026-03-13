-- Exercício 4) 
-- A análise eficaz dos dados de vendas é crucial para otimizar as estratégias de negócio. 
-- A ausência de insights abrangentes sobre o desempenho das vendas 
-- limita a capacidade de tomar decisões informadas sobre gerenciamento de estoque e campanhas de marketing.

-- Obter dados essenciais de vendas é o primeiro passo. 
-- Utilizando o schema db_star_sales, crie uma consulta que exiba as colunas: 

-- sales_id, 
-- product_id  
-- transaction_amount da tabela 'sales'."

SELECT 
	*
FROM 
	db_star_sales.sales
LIMIT 10;

SELECT 
	sales_id AS id_venda,
	product_id AS id_produto,
	transaction_amount AS total_vendas
FROM 
	db_star_sales.sales;
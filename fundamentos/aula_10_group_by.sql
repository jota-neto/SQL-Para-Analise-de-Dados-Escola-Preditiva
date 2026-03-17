/*Resumir dados por grupos*/

SELECT 
	segment,
	count(*) AS qtde_vendas,
	count(quantity) AS qtde_nao_nulas,
	MIN(quantity) AS min_qtde,
	MAX(quantity) AS max_qtde,
	AVG(quantity ) AS media_qtde,
	stddev(quantity) AS desv_pad_qtde,
	variance(quantity) AS var_qtde
FROM 
	tb_store_sales
GROUP BY 
	segment;
   
/*
 Para filtrar dados agregados pelo GROUP BY utiliza-se o HAVING.
 */  

-- Qual a lista de países com vendas acima de 100.000?

SELECT 
	country AS pais,
	SUM(sales) AS total_vendas
FROM 
	tb_store_sales
GROUP BY 
	country 
HAVING 
	SUM(sales) > 100000
ORDER BY 
	total_vendas DESC;
   
-- Mudar a granuliade de uma tabela:
-- Significa alterar o nível de detalhe dos dados armazenados nela. 
-- Maior granularidade (Dados detalhados): Os dados são armazenados na sua forma mais pura (ex: transação por transação, por segundo).
-- Menor granularidade (Dados agregados): Os dados são resumidos (ex: total de vendas por dia ou por mês)  
 

/* Nossa empresa realizou campanhas no Facebook e
  cada Ad realizado foi registrado na tabela tb_facebook_ads.
Deseja-se saber por campanha as informações de impressões,
 cliques, investimento, total de conversões e conversões aprovadas.
*/
	
SELECT 
	*
FROM 
	tb_facebook_ads;

SELECT 
	xyz_campaign_id,
	sum(impressions) AS impressoes,
	sum(clicks) AS cliques,
	sum(spent) AS investimento,
	sum(total_conversion) AS total_conversoes,
	sum(approved_conversion) AS total_conversoes_aprovadas
FROM 
	tb_facebook_ads
GROUP BY
	xyz_campaign_id;

	
	
	
	
	
	
	
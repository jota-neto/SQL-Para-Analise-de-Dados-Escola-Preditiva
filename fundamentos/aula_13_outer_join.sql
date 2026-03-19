/*
 	Quando desejamos que nossa consultqa exiba valores que não estão
necessariamente presentes em ambas as tabelas usamos o OUTER JOIN.

	Tipos de OUTER JOIN:
	 - LEFT JOIN;
	 	Traz todos os registros da tabela da esquerda + os correspondentes da direita.(Mais Usado)
	 - RIGHT JOIN;
	 	Traz todos os registros da tabela da direita + os correspondentes da esquerda.
	 - FULL JOIN.
	 	Traz todos os registros das duas tabelas, mesmo sem correspondência em nenhuma delas.
 */



/*
 Suponha que você está desenvolvendo um novo produto para atender o setor agrícola. 
 Considere ainda que seus potenciais clientes são produtores de soja ou milho.
 Pensando em estruturar sua equipe comercial você decidiu criar um relatório
 com a lista de cidades que possuem área de soja ou milho plantada. 
 */

SELECT 
	/*CASE 
		WHEN s.cod_municipio IS NOT NULL THEN s.cod_municipio
		ELSE m.cod_municipio 
	END AS cod_municipio,*/
	coalesce(s.cod_municipio, m.cod_municipio ) AS cod_municipio,
	CASE 
		WHEN s.municipio IS NOT NULL THEN s.municipio
		ELSE m.municipio 
	END AS municipio,
	s.valor AS area_soja,
	m.valor AS area_milho
FROM 
	db_ibge.area_soja s
	FULL JOIN db_ibge.area_milho m
		ON s.cod_municipio = m.cod_municipio 
		
SELECT 
	pm.cod_municipio,
	pm.municipio,
	s.valor AS area_soja,
	am.valor  AS area_milho
FROM 
	db_ibge.populacao_muninicipios pm 
	LEFT JOIN db_ibge.area_soja s
		ON pm.cod_municipio = s.cod_municipio 
	LEFT JOIN db_ibge.area_milho am  
		ON pm.cod_municipio = am.cod_municipio;

	SELECT 
	m.cod_municipio,
	m.municipio,
	m.valor AS area_milho
FROM 
	db_ibge.area_milho m
	




/*
 Construir uma tabela com a lista de municípios e área de soja e milho, 
 desconsiderar da tabela de soja e milho áreas inferiores a 10.000 ha 
 */
	
	
SELECT 
	pm.cod_municipio,
	pm.municipio,
	s.valor AS area_soja,
	am.valor  AS area_milho
FROM 
	db_ibge.populacao_muninicipios pm 
	LEFT JOIN db_ibge.area_soja s
		ON pm.cod_municipio = s.cod_municipio  AND s.valor > 10000
	LEFT JOIN db_ibge.area_milho am  
		ON pm.cod_municipio = am.cod_municipio AND am.valor > 10000;

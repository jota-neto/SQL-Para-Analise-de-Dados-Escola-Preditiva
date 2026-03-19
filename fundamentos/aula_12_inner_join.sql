/*INNER JOIN:
	JOINS que retornam apenas os registros que apresentam compos de ligação igual 
nas duas tabelas.
	Quando não é especificado o JOIN é um INNER JOIN.
  	
 */

/*
Suponha que você faz parte de startup que atua no setor agrícola ajudando produtores de soja 
a tornarem sua produção mais eficiente.  
Você decidiu abrir um novo escritório, 
que servirá tanto para tratar assuntos comerciais como para recrutar novos profissionais.
 
Neste sentido você decidiu que seu novos escritório deve atender aos seguintes critérios:
	* Deve está localizado em uma cidade que tem produção de soja
	* Deve está em uma das 100 maiores cidades do Brasil (em número de habitantes) 
 */

SELECT 
	*
FROM 
	db_ibge.area_soja 
LIMIT 5;


SELECT 
	*
FROM 
	db_ibge.maiores_cidades mc 
LIMIT 5;


SELECT 
	s.cod_municipio,
	s.municipio,
	s.valor AS area_soja,
	mc.populacao
FROM 
	db_ibge.area_soja s
		INNER JOIN db_ibge.maiores_cidades mc 
			ON s.cod_municipio = mc.cod_municipio 



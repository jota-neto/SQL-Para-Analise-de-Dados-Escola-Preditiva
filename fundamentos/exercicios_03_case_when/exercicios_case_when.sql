/*
  Exercício 1) Considere que a tabela tb_vendas representa as vendas realizadas pela empresa que trabalha. Você percebeu que existe um erro nos registros. 
  No inicio de 2020 o gerente Jose Moraes foi substituído pelo Joao Maria. 
  Crie uma consulta corrigindo os dados da tabela
 */

SELECT 
	"Data", 
	"Estado", 
	"Região", 
	"Gerente", 
	CASE 
		WHEN "Data" >= '2020-01-01' AND "Gerente" = 'Jose Moraes' THEN 'Joao Maria'
		ELSE "Gerente"		
	END gerente_corrigido,	
	"Vendedor", 
	"Departamento", 
	"Forma de Pagamento", 
	"Valor"
FROM public.tb_vendas
--WHERE "Gerente" = 'Jose Moraes';

/*
  Exercício 2) O Departamento "Esportes e Lazer" mudou de nome para "Bem-estar". 
  Crie uma consulta da tabela tb_vendas substituindo "Esporte e lazer" por "Bem-estar"
 */

SELECT 
	"Data", 
	"Estado", 
	"Região", 
	"Gerente", 
	"Vendedor", 
	"Departamento", 
	CASE 
		WHEN "Departamento" = 'Esporte e Lazer'  THEN 'Bem-estar'
		ELSE "Departamento"		
	END departamento,	
	"Forma de Pagamento", 
	"Valor"
FROM public.tb_vendas

/*
  Crie uma consulta da tabela tb_vendas com uma coluna que informe se o valor da venda foi maior ou menor que 1000.
 */

SELECT 
	*,
	CASE
		WHEN "Valor" > 1000 THEN 'Sim'
		ELSE 'Não'
	END AS venda_acima_1000
FROM 
	tb_vendas
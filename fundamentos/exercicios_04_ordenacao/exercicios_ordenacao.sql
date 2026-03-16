/*
 Crie uma consulta que ordene tabela time do schema db_star_sales  da data mais recente para mais antiga
*/

SELECT 
	* 
FROM 
	db_star_sales.time
ORDER BY
	time_datetime DESC;
	
	
/*
 Crie uma consulta que ordene tabela time do db_star_sales  da data mais antiga para mais recente
 */
	
SELECT 
	* 
FROM 
	db_star_sales.time
ORDER BY
	time_datetime;

/*
 Crie uma consulta que ordene tabela time do schema db_star_sales  da data mais recente para mais antiga,
 mas não utilize a coluna time_datetime
 */

SELECT 
	* 
FROM 
	db_star_sales.time
ORDER BY
	time_year DESC, 
	time_month DESC, 
	time_day DESC, 
	time_hour DESC,
	time_minute DESC,
	time_second DESC 
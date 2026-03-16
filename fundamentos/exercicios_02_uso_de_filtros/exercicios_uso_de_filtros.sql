-- Exercício 1) Utilizando a tabela tb_vendas, liste todas as vendas com pagamento pix.
SELECT
	*
FROM
	tb_vendas
WHERE 
	"Forma de Pagamento" = 'Pix';

-- Exercício 2) Utilizando a tabela tb_vendas, liste todas as vendas com valor acima de 1000.
SELECT
	*	
FROM 
	tb_vendas
WHERE 
	"Valor" >= 1000;

-- Exercício 3) Utilizando a tabela tb_vendas, liste todas as vendas de 2017.
SELECT
	*
FROM 
	public.tb_vendas
WHERE 
	"Data" BETWEEN '2017-01-01' AND '2018-01-01';

SELECT *
FROM public.tb_vendas
WHERE EXTRACT(YEAR FROM "Data") = 2017;
	
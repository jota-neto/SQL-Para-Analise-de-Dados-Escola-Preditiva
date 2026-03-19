SELECT 
	*
FROM 
	db_pizza_sales.pizzas p
LIMIT 5;

SELECT 
	*
FROM 
	db_pizza_sales.pizza_types pt 
LIMIT 5;

SELECT 
	*
FROM 
	db_pizza_sales.pizzas p
	JOIN db_pizza_sales.pizza_types pt 
		ON p.pizza_type_id = pt.pizza_type_id
LIMIT 5;
		
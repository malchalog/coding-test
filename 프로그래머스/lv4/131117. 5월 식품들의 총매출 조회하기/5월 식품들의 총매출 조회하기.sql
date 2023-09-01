SELECT p.product_id
     , p.product_name
     , SUM(p.price * o.amount) AS total_sales
FROM food_product AS p
     INNER JOIN food_order AS o ON o.product_id = p.product_id
WHERE LEFT(o.produce_date,7) = '2022-05'
GROUP BY p.product_id
ORDER BY 3 DESC , p.product_id ;
#중
SELECT ingredient_type 
      , sum(total_order) AS TOTAL_ORDER
FROM first_half AS f
     inner join icecream_info AS i ON f.flavor = i.flavor
GROUP BY i.ingredient_type 
ORDER BY total_order 


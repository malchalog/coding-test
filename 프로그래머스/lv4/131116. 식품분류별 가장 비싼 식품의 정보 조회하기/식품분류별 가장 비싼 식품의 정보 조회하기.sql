/*SELECT category,price, product_name
from food_product
where price in(select max(price) from food_product group by category )
and REGEXP_LIKE(category,'과자|국|김치|식용유')
group by category, product_name
order by price desc*/

SELECT category,price, product_name
FROM food_product
WHERE (price,category) IN(
                          SELECT MAX(price)
                                 ,category 
                          FROM food_product    
                         GROUP BY category )
      AND category IN ('과자','국','김치','식용유')
ORDER BY price DESC ;
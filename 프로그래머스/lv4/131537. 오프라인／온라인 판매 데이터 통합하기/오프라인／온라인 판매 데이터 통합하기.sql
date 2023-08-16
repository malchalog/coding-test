SELECT date_format(sales_date,'%Y-%m-%d') AS sales_date
       , product_id
       , user_id
       , sales_amount
FROM online_sale
WHERE LEFT(sales_date,7) = '2022-03'
UNION
SELECT date_format(sales_date,'%Y-%m-%d')
       , product_id
       , NULL AS user_id
       , sales_amount
FROM offline_sale AS f
WHERE LEFT(sales_date,7) = '2022-03'
ORDER BY  sales_date , product_id , user_id
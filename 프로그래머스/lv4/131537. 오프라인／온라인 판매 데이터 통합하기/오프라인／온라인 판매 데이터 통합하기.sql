SELECT date_format(SALES_DATE,'%Y-%m-%d') AS sales_date
       , product_id
       , user_id
       , sales_amount
UNION
SELECT date_format(SALES_DATE,'%Y-%m-%d') AS sales_date
       , product_id
       , NULL AS user_id
       , sales_amount
from offline_sale AS f
WHERE LEFT(SALES_DATE,7) = '2022-03'
ORDER BY  SALES_DATE , product_id , user_id
SELECT date_format(sales_date,'%Y-%m-%d') AS sales_date
       , product_id
       , user_id
       , sales_amount
FROM  
     (SELECT sales_date, product_id, user_id, sales_amount
      FROM online_sale AS n
      UNION
      SELECT sales_date, product_id, 
             NULL AS user_id
            ,sales_amount
      from offline_sale AS f
      ) AS nf
WHERE left(sales_date,7) = '2022-03'
ORDER BY  sales_date
        , product_id 
        , user_id
#IFNULL(NULL,'NULL') AS user_id
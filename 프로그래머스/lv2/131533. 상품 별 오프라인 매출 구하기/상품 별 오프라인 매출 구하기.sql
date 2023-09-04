#0905
SELECT temper.product_code
      ,total*price AS sales
FROM ( SELECT p.product_code AS product_code
             ,SUM(s.sales_amount) AS total
             ,price 
       FROM PRODUCT AS p
       LEFT JOIN OFFLINE_SALE AS s ON s.product_id = p.product_id
       GROUP BY product_code) AS temper
ORDER BY 2 DESC, 1 ;
 
     
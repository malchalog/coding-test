-- 0818 
/* SELECT  (CASE WHEN price < 10000 then 0
             WHEN  price < 20000 then 10000
             WHEN  price < 30000 then 20000
             WHEN  price < 40000 then 30000
             WHEN  price < 50000 then 40000
             WHEN  price < 60000 then 50000
             WHEN  price < 70000 then 60000
             WHEN  price < 80000 then 70000
             WHEN  price < 90000 then 80000
             END) AS PRICE_GROUP
        , count(*) AS PRODUCTS
  FROM  product 
 GROUP BY  price_group
 ORDER BY  1 */
 


SELECT TRUNCATE(PRICE, -4) AS PRICE_GROUP #10000원 단위로 절삭 
       , COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY 1
ORDER BY 1

 
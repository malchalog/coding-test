/*SELECT  CASE WHEN PRICE < 10000 then 0
             WHEN 10000 <= PRICE and PRICE < 20000 then 10000
             WHEN 20000 <= PRICE and PRICE < 30000 then 20000
             WHEN 30000 <= PRICE and PRICE < 40000 then 30000
             WHEN 40000 <= PRICE and PRICE < 50000 then 40000
             WHEN 50000 <= PRICE and PRICE < 60000 then 50000
             WHEN 60000 <= PRICE and PRICE < 70000 then 60000
             WHEN 70000 <= PRICE and PRICE < 80000 then 70000
             WHEN 80000 <= PRICE and PRICE < 90000 then 80000
             END AS PRICE_GROUP
        , count(*)
  FROM  PRODUCT 
 GROUP BY  PRICE_GROUP
 ORDER BY  PRICE_GROUP ASC */

SELECT  CASE WHEN PRICE < 10000 then 0
             WHEN PRICE < 20000 then 10000
             WHEN PRICE < 30000 then 20000
             WHEN PRICE < 40000 then 30000
             WHEN PRICE < 50000 then 40000
             WHEN PRICE < 60000 then 50000
             WHEN PRICE < 70000 then 60000
             WHEN PRICE < 80000 then 70000
             WHEN PRICE < 90000 then 80000
             END AS PRICE_GROUP
        , count(*)
  FROM  PRODUCT 
 GROUP BY  PRICE_GROUP
 ORDER BY  PRICE_GROUP ASC 


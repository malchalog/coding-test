/*
SELECT FOOD_TYPE
       , REST_ID
       , REST_NAME
       , FAVORITES
    FROM REST_INFO
   WHERE (FOOD_TYPE, FAVORITES) IN ( SELECT FOOD_TYPE
                                          ,MAX(FAVORITES)
                                     FROM REST_INFO
                                     GROUP BY FOOD_TYPE )
ORDER BY FOOD_TYPE DESC*/

/*SELECT food_type
       ,rest_id
       ,rest_name
       ,favorites
FROM rest_info
WHERE (food_type,favorites) IN ( 
                                SELECT food_type
                                       ,max(favorites) 
                                FROM rest_info
                                GROUP BY food_type )  
GROUP BY food_type
ORDER BY food_type DESC ; */

SELECT food_type
       ,rest_id
       ,rest_name
       ,favorites
FROM (
SELECT food_type
       ,rest_id
       ,rest_name
       ,favorites
       , RANK () OVER (PARTITION BY  food_type ORDER BY favorites DESC) AS best
FROM rest_info ) AS price_rank
WHERE best = 1
GROUP BY 1
ORDER BY 1 DESC ;
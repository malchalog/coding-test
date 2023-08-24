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

SELECT food_type
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
ORDER BY food_type DESC ;  
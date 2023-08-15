SELECT i.REST_ID, i.REST_NAME,i.FOOD_TYPE
      ,i.FAVORITES AS FAVORITES, i.ADDRESS
      ,ROUND(AVG(r.REVIEW_SCORE),2) AS SCORE
FROM rest_review AS r
     INNER JOIN rest_info AS i ON i.rest_id = r.rest_id
GROUP BY rest_id
HAVING address like '서울%'
ORDER BY avg(r.review_score) DESC
        ,favorites DESC
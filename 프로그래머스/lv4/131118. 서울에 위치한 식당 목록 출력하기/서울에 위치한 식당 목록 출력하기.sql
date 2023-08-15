SELECT i.REST_ID
       ,i.REST_NAME
       ,i.FOOD_TYPE
       ,i.FAVORITES
       ,i.ADDRESS
       ,ROUND(AVG(r.REVIEW_SCORE),2) AS SCORE
FROM rest_info  AS i
     INNER JOIN rest_review AS r ON i.rest_id = r.rest_id #처음에 left join으로 했다가 리뷰가 있는 애들만 구해서 평균을 처리해야 하니까 inner join
WHERE address like '서울%'
GROUP BY rest_id
ORDER BY 6 DESC
        ,4 DESC
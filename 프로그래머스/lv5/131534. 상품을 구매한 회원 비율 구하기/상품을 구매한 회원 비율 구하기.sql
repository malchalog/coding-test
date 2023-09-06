# 0905 하 처음에 user_id가 아니라 online_sale_id를 count하는 실수를 했음


SELECT   year(sales_date) AS YEAR
       , month(sales_date) AS MONTH
       , COUNT (distinct o.user_id)  AS PUCHASED_USERS  
       , ROUND(COUNT (distinct o.user_id) / 158,1)
FROM user_info AS i
     INNER JOIN online_sale AS o ON o.user_id = i.user_id
WHERE LEFT(i.joined,4) = '2021'  
      AND year(sales_date) IS NOT NULL 
GROUP BY 1,2
ORDER BY 1,2 ; 



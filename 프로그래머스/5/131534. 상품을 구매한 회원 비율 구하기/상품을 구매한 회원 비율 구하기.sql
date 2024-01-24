/*# 0905 
SELECT   year(sales_date) AS YEAR
       , month(sales_date) AS MONTH
       , COUNT (distinct o.user_id)  AS PUCHASED_USERS  
       , ROUND(COUNT (distinct o.user_id) / 158,1) # 158로 하지 않고 간단히 처리하는 방법 찾아보기
FROM user_info AS i
     INNER JOIN online_sale AS o ON o.user_id = i.user_id
WHERE LEFT(i.joined,4) = '2021'  
      AND year(sales_date) IS NOT NULL 
GROUP BY 1,2
ORDER BY 1,2 ;*/


SELECT YEAR(os.SALES_DATE) AS YEAR,
        MONTH(os.SALES_DATE) AS MONTH,
        COUNT(DISTINCT os.user_id) AS PUCHASED_USERS,
        ROUND(count(DISTINCT os.user_id) / (SELECT COUNT(USER_ID) FROM USER_INFO WHERE YEAR(JOINED) = 2021), 1) AS PUCHASED_RATIO
FROM ONLINE_SALE os LEFT JOIN USER_INFO ui ON os.USER_ID = ui.USER_ID
WHERE ui.joined BETWEEN '2021-00-00' AND '2022-00-00'
GROUP BY MONTH(os.sales_date)
ORDER BY YEAR ASC, MONTH ASC
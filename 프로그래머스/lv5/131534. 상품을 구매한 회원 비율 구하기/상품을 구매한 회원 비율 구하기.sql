#0905 

/*SELECT year(sales_date) 
       , month(sales_date)
       , COUNT(CASE WHEN o.online_sale_id IS NOT NULL THEN 1 END) AS perchased_users
       , ROUND (COUNT(CASE WHEN o.online_sale_id IS NOT NULL THEN 1 END)
         / 183,1) AS purchased_ratio
FROM user_info AS i
     LEFT JOIN online_sale AS o ON o.user_id = i.user_id
WHERE LEFT(i.joined,4) = '2021' 
GROUP BY year(sales_date) , month(sales_date)
ORDER BY 1,2*/

SELECT YEAR(sales_date),
    MONTH(sales_date), 
    count(DISTINCT O.USER_ID), 
    ROUND(count(DISTINCT O.USER_ID)/(SELECT COUNT(USER_ID) FROM USER_INFO WHERE YEAR(JOINED) = 2021),1)
FROM ONLINE_SALE O
INNER JOIN USER_INFO U ON U.USER_ID = O.USER_ID
WHERE YEAR(JOINED) = 2021
GROUP BY 1,2
ORDER BY 1,2

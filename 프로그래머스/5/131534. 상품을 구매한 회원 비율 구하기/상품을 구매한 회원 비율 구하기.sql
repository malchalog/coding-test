SELECT YEAR(o.SALES_DATE) AS YEAR
       , MONTH(o.SALES_DATE) AS MONTH
       , COUNT(DISTINCT o.USER_ID) AS PUCHASED_USERS
       , ROUND(COUNT(DISTINCT o.USER_ID) / (SELECT COUNT(DISTINCT user_id) FROM user_info WHERE YEAR(joined) = '2021') ,1) AS PUCHASED_RATIO
FROM user_info AS u
     INNER JOIN ONLINE_SALE AS o ON u.USER_ID = o.USER_ID 
WHERE YEAR(u.JOINED) = '2021'
GROUP BY  1,2
ORDER BY  1,2 ASC
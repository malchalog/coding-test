-- 코드를 입력하세요
SELECT DATE_FORMAT(S.SALES_DATE,"%Y")AS YEAR
      ,DATE_FORMAT(S.SALES_DATE,"%m") AS MONTH
      ,I.GENDER
      ,COUNT(DISTINCT S.USER_ID) AS USERS
FROM USER_INFO I
     JOIN ONLINE_SALE S
     ON I.USER_ID = S.USER_ID
WHERE I.GENDER IS NOT NULL
GROUP BY YEAR,MONTH,GENDER       
ORDER BY YEAR,MONTH,GENDER 

/*SELECT YEAR(sale.sales_date) AS YEAR
       , MONTH(sale.sales_date) AS MONTH
       , GENDER 
       , COUNT(info.user_id) AS USERS
FROM user_info AS info
     INNER JOIN online_sale AS sale ON info.user_id = sale.user_id and info.gender IS NOT NULL
GROUP BY 1,2,3
ORDER BY 1,2,3 ; */
     
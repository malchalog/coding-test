/*SELECT b.category AS CATEGORY
       ,SUM(s.sales) AS TOTAL_SALES
FROM book_sales AS s
    INNER JOIN book AS b ON b.book_id = s.book_id
WHERE MID(s.sales_date,6,2) = '01'
GROUP BY category
ORDER BY category*/


SELECT b.CATEGORY, SUM(bs.SALES) AS TOTAL_SALES
FROM BOOK_SALES AS bs
     LEFT JOIN BOOK AS b ON b.book_id = bs.book_id
WHERE YEAR(bs.SALES_DATE) =  '2022' AND MONTH(bs.SALES_DATE)= '01'
GROUP BY b.CATEGORY
ORDER BY b.CATEGORY ASC ;
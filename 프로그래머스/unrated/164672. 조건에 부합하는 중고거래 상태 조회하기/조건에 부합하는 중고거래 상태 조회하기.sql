SELECT BOARD_ID
       , WRITER_ID
       , TITLE
       , PRICE 
       , CASE WHEN status = 'SALE' THEN '판매중'
              WHEN status = 'RESERVED' THEN '예약중'
              WHEN status = 'DONE' THEN '거래완료'
              ELSE NULL END AS status         
FROM used_goods_board
WHERE DATE_FORMAT(created_date,'%Y-%m-%d') = '2022-10-05'
ORDER BY 1 DESC;

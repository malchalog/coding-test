/*WITH board AS ( SELECT writer_id
                  ,SUM(price) AS total_sales
          FROM used_goods_board AS b
          WHERE b.status = 'DONE' 
          GROUP BY writer_id
          HAVING price >= '700000') 
          
SELECT board.writer_id
       , u.nickname
       , board.total_sales
FROM board
     INNER JOIN USED_GOODS_USER AS u ON board.writer_id and u.user_id*/

     
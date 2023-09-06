#0906 
SELECT concat('/home/grep/src/'
       , b.board_id ,'/'      
       , f.file_id 
       , f.file_name
       , f.file_ext ) AS FILE_PATH      
FROM used_goods_board AS b
     INNER JOIN used_goods_file AS f ON f.board_id = b.board_id
WHERE b.views = (SELECT MAX(VIEWS) FROM USED_GOODS_BOARD)
ORDER BY f.file_id DESC ; 
     
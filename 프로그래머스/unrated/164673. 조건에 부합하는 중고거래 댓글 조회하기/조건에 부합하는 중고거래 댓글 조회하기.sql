SELECT b.title
      ,b.board_id
      ,r.reply_id
      ,r.writer_id
      ,r.contents
      ,date_format(r.created_date,'%Y-%m-%d') AS created_date
FROM  USED_GOODS_BOARD AS b
      inner join used_goods_reply AS r on b.board_id = r.board_id
WHERE mid(b.created_date,6,2) = '10'
ORDER BY r.created_date ASC, b.title ASC
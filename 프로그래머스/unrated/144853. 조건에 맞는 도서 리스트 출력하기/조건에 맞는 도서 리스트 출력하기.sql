SELECT book_id, date_format(published_date,'%Y-%m-%d') AS published_date
FROM book
WHERE left(published_date,4) = '2021'
      and category = '인문'
ORDER BY published_date 
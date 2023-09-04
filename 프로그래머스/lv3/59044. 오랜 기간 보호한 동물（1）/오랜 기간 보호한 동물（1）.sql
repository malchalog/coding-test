-- 코드를 입력하세요
SELECT i.name,i.datetime
FROM ANIMAL_INS AS i
     LEFT JOIN ANIMAL_OUTS AS o ON i.animal_id = o.animal_id
WHERE o.datetime IS NULL
ORDER BY i.datetime ASC
limit 3
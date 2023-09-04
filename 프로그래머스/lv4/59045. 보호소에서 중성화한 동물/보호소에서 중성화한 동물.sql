-- 코드를 입력하세요
SELECT i.animal_id
      , i.animal_type
      , i.name
FROM ANIMAL_OUTS AS o
     INNER JOIN ANIMAL_INS AS i ON i.animal_id = o.animal_id
     AND i.SEX_UPON_INTAKE LIKE 'Intact%'
WHERE o.SEX_UPON_OUTCOME ='Neutered Male' 
      or o.SEX_UPON_OUTCOME = 'Spayed Female'
ORDER BY i.animal_id
     
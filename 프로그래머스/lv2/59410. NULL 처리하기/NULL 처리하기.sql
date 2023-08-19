-- 코드를 입력하세요
SELECT animal_type
       , IFNULL(NAME,'No name') AS name
       , sex_upon_intake
FROM animal_ins
ORDER BY animal_id
      
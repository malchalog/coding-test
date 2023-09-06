-- 코드를 입력하세요
SELECT ANIMAL_ID
      , NAME
      , DATE_FORMAT(datetime,'%Y-%m-%d')
FROM animal_ins
ORDER BY 1 ;
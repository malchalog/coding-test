-- 코드를 입력하세요
SELECT car_type 
      , count(car_id) AS CARS
FROM car_rental_company_car
WHERE options LIKE '%통풍시트%' 
      OR  options LIKE '%열선시트%'
      OR options LIKE'%가죽시트%'
GROUP BY car_type
ORDER BY car_type ;
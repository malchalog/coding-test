-- 내 풀이 
/*SELECT car_type 
      , count(car_id) AS CARS
FROM car_rental_company_car
WHERE options LIKE '%통풍시트%' 
   OR  options LIKE '%열선시트%'
   OR options LIKE'%가죽시트%'
GROUP BY car_type
ORDER BY car_type ;*/

SELECT CAR_TYPE
      ,COUNT(car_id) AS cars
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS REGEXP ('통풍시트|열선시트|가죽시트')
GROUP BY 1
ORDER BY 1
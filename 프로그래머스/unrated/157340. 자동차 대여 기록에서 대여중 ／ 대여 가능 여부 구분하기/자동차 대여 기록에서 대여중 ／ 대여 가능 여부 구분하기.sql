SELECT distinct car_id,
       CASE WHEN car_id IN (
                            SELECT car_id
                            FROM car_rental_company_rental_history
                            WHERE '2022-10-16' BETWEEN start_date AND end_date
                            ) THEN '대여중' ELSE '대여 가능' END  AS `AVAILABILITY`
FROM car_rental_company_rental_history
ORDER BY car_id DESC;
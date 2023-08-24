WITH his AS (
    SELECT car_id
    FROM car_rental_company_rental_history
    WHERE  start_date between '2022-08-01' and '2022-10-31'
    GROUP BY car_id
    HAVING COUNT (history_id) >= 5)

SELECT MONTH(start_date) AS month
      , car_id
      , count(history_id) AS records
FROM car_rental_company_rental_history  
WHERE start_date BETWEEN '2022-08-01' and '2022-10-31'
      and car_id IN (SELECT car_id FROM his)
GROUP BY month(start_date), car_id
HAVING COUNT(*) != 0 
ORDER BY month, car_id DESC;
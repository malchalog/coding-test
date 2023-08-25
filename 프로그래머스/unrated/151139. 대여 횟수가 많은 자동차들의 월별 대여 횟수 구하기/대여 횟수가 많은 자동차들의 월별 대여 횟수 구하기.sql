SELECT EXTRACT(MONTH FROM start_date) AS month
     , car_id
     , COUNT(*) AS records
FROM car_rental_company_rental_history
WHERE car_id IN (SELECT car_id
                 FROM car_rental_company_rental_history
                 WHERE start_date BETWEEN TO_DATE('2022-08-01','YYYY-MM-DD') AND TO_DATE('2022-10-31','YYYY-MM-DD')
                 GROUP BY car_id
                 HAVING COUNT(*)>=5)
AND start_date BETWEEN TO_DATE('2022-08-01','YYYY-MM-DD') AND TO_DATE('2022-10-31','YYYY-MM-DD')
GROUP BY EXTRACT(MONTH FROM start_date), car_id
ORDER BY month, car_id DESC
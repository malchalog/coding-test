SELECT history_id, 
       ROUND(daily_fee * (DATEDIFF(end_date, start_date) + 1) * (100 - IFNULL(discount_rate, 0))/100) AS fee
FROM (SELECT *, CASE WHEN DATEDIFF(end_date, start_date) >= 90 THEN '90일 이상'
                     WHEN DATEDIFF(end_date, start_date) >= 30 THEN '30일 이상'
                     WHEN DATEDIFF(end_date, start_date) >= 7 THEN '7일 이상'
                END AS duration_type
      FROM car_rental_company_rental_history) AS history LEFT JOIN car_rental_company_car USING (car_id)
LEFT JOIN car_rental_company_discount_plan USING (car_type, duration_type)
WHERE car_type = '트럭'
ORDER BY fee DESC, history_id DESC;
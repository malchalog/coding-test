SELECT ROUND(AVG(daily_fee),0) AS average_fee
FROM CAR_RENTAL_COMPANY_CAR
where car_type = 'SUV'
GROUP BY car_type

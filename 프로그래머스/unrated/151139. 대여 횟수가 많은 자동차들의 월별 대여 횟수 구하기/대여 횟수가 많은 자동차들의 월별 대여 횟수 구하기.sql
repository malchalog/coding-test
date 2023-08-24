/*SELECT MONTH(START_DATE) AS MONTH
       ,car_id
       ,COUNT(car_id) AS RECORDS  
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN '2022-08-01' and '2022-10-31' 
GROUP BY car_id,MONTH(START_DATE)
HAVING  RECORDS >=5
ORDER BY MONTH(start_date),car_id DESC*/

WITH counthis AS (
    SELECT car_id
    from car_rental_company_rental_history
    where start_date between '2022-08-01' and '2022-10-31'
    group by car_id
    having count(history_id) >= 5
)

select 
    month(start_date) month
    , car_id
    , count(history_id) records
from car_rental_company_rental_history h 
where start_date between '2022-08-01' and '2022-10-31'
      and car_id in (select car_id from counthis)
group by month(start_date), car_id
order by month, car_id desc
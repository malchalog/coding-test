# 2022년 10월 16일에 대여 된적이 있는 이라고 해석해야함SELECT DISTINCT CAR_ID, 
/*IF(CAR_ID IN (SELECT DISTINCT CAR_ID FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY WHERE '2022-10-16' BETWEEN START_DATE AND END_DATE), '대여중', '대여 가능') AS AVAILABILTIY 
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY 
ORDER BY CAR_ID DESC*/


select car_id, if(max(if(start_date <= '2022-10-16' and end_date >= '2022-10-16', 1, 0)) = 1, '대여중', '대여 가능') as availability
  from car_rental_company_rental_history
 group by car_id
 order by car_id desc;
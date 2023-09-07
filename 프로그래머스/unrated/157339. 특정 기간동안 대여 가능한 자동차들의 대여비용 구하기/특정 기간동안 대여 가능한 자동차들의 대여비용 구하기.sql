#0904 중

SELECT  C.CAR_ID AS CAR_ID
      , C.CAR_TYPE AS CAR_TYPE
      , FLOOR(C.DAILY_FEE * 30 * (1 - P.DISCOUNT_RATE/100)) AS FEE
FROM CAR_RENTAL_COMPANY_CAR C
     INNER JOIN CAR_RENTAL_COMPANY_DISCOUNT_PLAN P ON C.CAR_TYPE = P.CAR_TYPE
                AND P.DURATION_TYPE LIKE '30%'
                AND c.car_type IN ('세단','SUV')# 세단,suv 중 30일 이상인 차만
     LEFT JOIN CAR_RENTAL_COMPANY_RENTAL_HISTORY H ON C.CAR_ID = H.CAR_ID 
               AND ('2022-11-01' BETWEEN H.START_DATE AND H.END_DATE 
                    OR '2022-11-30' BETWEEN H.START_DATE AND H.END_DATE)
                    #11월 1일-30일 내에 대여 기간이 겹치는 차
WHERE H.CAR_ID IS NULL #대여기간이 안겹치는 차 (즉, 대여가능한 차)
      AND FLOOR(C.DAILY_FEE * 30 * (1 - P.DISCOUNT_RATE/100)) 
          BETWEEN 500000 AND 1999999 #금액조건
ORDER BY FEE DESC, CAR_TYPE ASC, CAR_ID DESC

#그런데 left join 방식으로 하면 같은 차를 여러번 대여할 수 있으므로 기준 테이블의 행에 조인 되는 행이 2개 이상이 되면 중복값이 생긴다는 것을 주의해야할 것 같다.
# 물론 여기에서는 일부러 NULL값만을 추출하는 것이라 해당 없지만! 혹시 저 조건에 맞는 행을 추출하고 싶었다면 distinct 혹은 group by를 통해 중복값을 제거해야한다.
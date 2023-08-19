SET @h = -1; # 0시부터 출력하기 위해 변수 선언

SELECT (@h := @h + 1) as HOUR
       , (SELECT COUNT(*) 
          FROM animal_outs 
          WHERE HOUR(DATETIME) = @h) as COUNT #변수와 일치하는 시간이면 카운트
FROM ANIMAL_OUTS
WHERE @h < 23 #최종 @h는 +1 더해서 23시
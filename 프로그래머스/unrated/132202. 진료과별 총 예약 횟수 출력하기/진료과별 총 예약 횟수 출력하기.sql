-- 코드를 입력하세요
SELECT mcdp_cd  '진료과코드'
      ,COUNT(*) '5월예약건수'
FROM appointment
WHERE LEFT(apnt_ymd,7) = '2022-05'
GROUP BY mcdp_cd 
ORDER BY 2, 1
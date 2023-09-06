#2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성해주세요


SELECT a.APNT_NO
       , p.PT_NAME	
       , a.PT_NO	
       , a.MCDP_CD
       , d.DR_NAME	
       , a.APNT_YMD
FROM appointment AS a
     INNER JOIN patient AS p ON p.pt_no = a.pt_no
     INNER JOIN doctor AS d ON d.dr_id = a.MDDR_ID
WHERE date_format(a.apnt_ymd,'%Y-%m-%d') = '2022-04-13'
      AND a.APNT_CNCL_YN = 'N'
ORDER BY a.APNT_YMD ASC ;

SELECT MEMBER_ID, MEMBER_NAME, GENDER
      ,date_format(date_of_birth,'%Y-%m-%d') AS DATE_OF_BIRTH
FROM member_profile
where not tlno is null 
      and date_of_birth like '%-03-%'
      and gender = 'w'
ORDER BY member_id ASC
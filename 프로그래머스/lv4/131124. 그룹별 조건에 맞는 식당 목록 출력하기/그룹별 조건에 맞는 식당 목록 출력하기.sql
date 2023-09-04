/*SELECT MEMBER_NAME
       , REVIEW_TEXT
       , REVIEW_DATE
FROM MEMBER_PROFILE AS p
    LEFT JOIN REST_REVIEW AS r ON p.member_id = r.member_id      
GROUP BY p.member_id
HAVING count(*) >= (SELECT member_id
                           , COUNT(*) AS cnt_review
                     FROM REST_REVIEW AS r
                     GROUP BY p.member_id ) */
SELECT M.MEMBER_NAME, R.REVIEW_TEXT, DATE_FORMAT(R.REVIEW_DATE, '%Y-%m-%d') AS REVIEW_DATE
FROM MEMBER_PROFILE M
JOIN REST_REVIEW R ON M.MEMBER_ID = R.MEMBER_ID
WHERE R.MEMBER_ID = (SELECT MEMBER_ID
                    FROM REST_REVIEW
                    GROUP BY MEMBER_ID
                    ORDER BY COUNT(MEMBER_ID) DESC
                    LIMIT 1)
ORDER BY 3,2;

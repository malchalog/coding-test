#0904 with문으로 풀기
WITH cnt_review AS (
                     SELECT member_id, COUNT(*) AS CNT
                     FROM rest_review
                     GROUP BY member_id) #한 멤버당 쓴 리뷰 수 
    , max_review AS (
                        SELECT MEMBER_ID
                        FROM cnt_review
                        WHERE CNT = (
                                      SELECT MAX(CNT) #최대 리뷰 개수
                                      FROM cnt_review ))                
SELECT m.member_name,r.review_text,DATE_FORMAT(r.review_Date,'%Y-%m-%d')
FROM member_profile AS m
INNER JOIN rest_review AS r ON r.member_id = m.member_id
INNER JOIN max_review mm ON mm.MEMBER_ID = m.MEMBER_ID
ORDER BY R.REVIEW_DATE, R.REVIEW_TEXT
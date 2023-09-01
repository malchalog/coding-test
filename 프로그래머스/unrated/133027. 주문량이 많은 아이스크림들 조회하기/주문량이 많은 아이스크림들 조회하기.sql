/* SELECT flavor
FROM (
      SELECT flavor, total_order
      FROM first_half
      UNION ALL 
      SELECT flavor, total_order
      FROM july) AS temper
GROUP BY flavor
ORDER BY SUM(temper.total_order) DESC
limit 3 */

SELECT J.FLAVOR
FROM JULY J
     LEFT JOIN FIRST_HALF F ON J.SHIPMENT_ID = F.SHIPMENT_ID
GROUP BY J.FLAVOR
ORDER BY (SUM(J.TOTAL_ORDER) + SUM(F.TOTAL_ORDER)) DESC
LIMIT 3
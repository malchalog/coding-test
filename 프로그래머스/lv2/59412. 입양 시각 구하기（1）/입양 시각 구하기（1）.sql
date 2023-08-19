SELECT hour(datetime) AS HOUR
      , COUNT(animal_id) AS COUNT
FROM animal_outs
GROUP BY 1
HAVING HOUR >= 9 AND HOUR <20
ORDER BY 1
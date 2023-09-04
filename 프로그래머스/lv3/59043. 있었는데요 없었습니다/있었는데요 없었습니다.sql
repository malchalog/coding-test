SELECT i.animal_id
      ,i.name
FROM animal_ins AS i
     LEFT JOIN animal_outs AS o ON o.animal_id = i.animal_id
WHERE o.datetime <= i.datetime
ORDER BY i.datetime

     
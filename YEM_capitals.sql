SELECT
  adm1,
  min(latitude) AS min_latitude,
  min(longitude) AS min_longitude,
  max(latitude) AS max_latitude,
  max(longitude) AS max_longitude,
  cast(sum(population) as integer) AS population
FROM yemen_2020
WHERE type = 'total_population'
  AND adm1 IN ('Sana''a', 'Aden')
GROUP BY adm1
ORDER BY adm1;o


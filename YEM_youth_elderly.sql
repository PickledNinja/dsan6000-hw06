SELECT
  type,
  CASE
    WHEN adm1 IN ('Aden','Abyan','Al Mahrah','Hadramawt','Lahij','Shabwah') THEN 'PDRY'
    ELSE 'YAR'
  END AS former_country,
  cast(sum(population) as integer) AS population
FROM yemen_2020
WHERE type IN ('elderly_60_plus', 'youth_15_24')
GROUP BY 1, 2
ORDER BY type, former_country;

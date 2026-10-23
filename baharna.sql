SELECT
  min(latitude) AS min_latitude,
  min(longitude) AS min_longitude,
  max(latitude) AS max_latitude,
  max(longitude) AS max_longitude,
  cast(sum(population) as integer) AS population
FROM full_2020
WHERE month = '2019-06'
  AND country = 'SAU'
  AND type = 'total_population'
  AND ST_Within(
    ST_Point(longitude, latitude),
    ST_Polygon('POLYGON ((49.172423 27.551087,50.291676 26.5688212,50.4807787 25.2889992,50.1945203 25.1091269,49.3834547 25.2026937,48.9699703 25.7983796,48.5350499 26.5181457,49.172423 27.551087))')
  );

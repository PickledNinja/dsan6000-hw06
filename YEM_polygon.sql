SELECT
  min(latitude) AS min_latitude,
  min(longitude) AS min_longitude,
  max(latitude) AS max_latitude,
  max(longitude) AS max_longitude,
  cast(sum(population) as integer) AS population
FROM yemen_2020
WHERE
  type='total_population'
  AND ST_Within(
    ST_Point(longitude, latitude),
    ST_Polygon('POLYGON ((52.1173903 18.9508902,52.689333 17.5526654,53.0884909 16.6780833,52.2268832 15.5633866,47.0804225 13.1782204,43.414478 12.5095031,46.0726955 14.2615047,45.5258933 14.963794,47.4858017 17.6933719,49.0639872 18.6058258,50.6459512 18.8168733,52.1173903 18.9508902))')
  );

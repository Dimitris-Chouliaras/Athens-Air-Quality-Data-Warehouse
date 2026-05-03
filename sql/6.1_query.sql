-- Υπολογισμός μέσης τιμής ρύπων PM10 για τους 10 πιο επιβαρυμένους σταθμούς.
SELECT s.station_name, ROUND(AVG(f.pm10), 2) AS average_pm10
FROM fact_air_quality f
JOIN dim_station s ON f.station_key = s.station_key
GROUP BY s.station_name
ORDER BY average_pm10 DESC
LIMIT 10;
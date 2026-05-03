-- 6.9 Ταξινόμηση μέσων τιμών NO2 ανά σταθμό και κατηγορία ποιότητας.
SELECT s.station_name, ROUND(AVG(f.no2), 2) AS total_avg_no2,
IFNULL(c.category_name, 'No Data') AS overall_air_quality_status,
IFNULL(c.health_advice, 'Insufficient measurements for this period') AS
health_advice
FROM dim_station s
LEFT JOIN fact_air_quality f ON s.station_key = f.station_key
LEFT JOIN dim_aqi_categories c ON c.pollutant_name = 'NO2'
 AND (
 SELECT ROUND(AVG(f2.no2), 2)
 FROM fact_air_quality f2
 WHERE f2.station_key = s.station_key
 ) BETWEEN c.lower_limit AND c.upper_limit
GROUP BY s.station_name, c.category_name, c.health_advice
ORDER BY total_avg_no2 DESC;
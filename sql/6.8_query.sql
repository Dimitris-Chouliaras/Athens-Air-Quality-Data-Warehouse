-- Ποσοστιαία κατανομή ποιότητας αέρα (NO2) βάσει ευρωπαϊκών προτύπων για το έτος 2022 (ανά ημέρα)
SELECT c.category_name AS daily_air_quality, COUNT(*) AS total_days
FROM (
 SELECT t.full_date, AVG(f.no2) AS avg_daily_no2
 FROM fact_air_quality f
 JOIN dim_time t ON f.time_key = t.time_key
 WHERE t.year = 2022
 GROUP BY t.full_date
) AS daily_stats
JOIN dim_aqi_categories c ON c.pollutant_name = 'NO2'
WHERE daily_stats.avg_daily_no2 >= c.lower_limit AND
daily_stats.avg_daily_no2 <= c.upper_limit
GROUP BY c.category_name, c.aqi_category_key
ORDER BY c.aqi_category_key;
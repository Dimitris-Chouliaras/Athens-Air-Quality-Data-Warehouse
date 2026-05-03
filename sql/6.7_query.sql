-- Ποσοστιαία κατανομή ποιότητας αέρα (NO2) βάσει ευρωπαϊκών προτύπων για το έτος 2022 (ανά εγγραφή)
SELECT c.category_name AS air_quality_level, COUNT(*) AS
total_measurements FROM fact_air_quality f
JOIN dim_aqi_categories c ON c.pollutant_name = 'NO2'
JOIN dim_time t ON f.time_key = t.time_key
WHERE t.year = 2022 AND f.no2 >= c.lower_limit AND f.no2 <= c.upper_limit
GROUP BY c.category_name, c.aqi_category_key
ORDER BY c.aqi_category_key;
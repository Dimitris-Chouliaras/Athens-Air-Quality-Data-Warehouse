-- Μέση μηνιαία διακύμανση NO2 και Θερμοκρασίας (Διαχρονικά)
SELECT t.month, ROUND(AVG(f.temp), 2) AS avg_temp, ROUND(AVG(f.no2),2) AS avg_no2
FROM fact_air_quality f
JOIN dim_time t ON f.time_key = t.time_key
GROUP BY t.month
ORDER BY t.month;
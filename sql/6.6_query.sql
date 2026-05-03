-- Μέση τιμή ρύπων κατά τις εργάσιμες ημέρες έναντι Σαββατοκύριακου.
SELECT
 CASE WHEN t.is_weekend = 'Yes' THEN 'Σαββατοκύριακο' ELSE 'Καθημερινή' END AS day_type,
 ROUND(AVG(f.pm2_5), 2) AS avg_pm2_5,
 ROUND(AVG(f.pm10), 2) AS avg_pm10,
 ROUND(AVG(f.o3), 2) AS avg_o3,
 ROUND(AVG(f.no2), 2) AS avg_no2
FROM fact_air_quality f
JOIN dim_time t ON f.time_key = t.time_key
GROUP BY day_type;
-- Εντοπισμός ωρών αιχμής της ρύπανσης (NO2) κατά τη διάρκεια της ημέρας.
SELECT t.hour AS 'Hour_of_Day', ROUND(AVG(f.no2), 2) AS 'Average_NO2',
 CASE
 WHEN t.hour BETWEEN 5 AND 8 THEN 'Πρωινή Αιχμή'
 WHEN t.hour BETWEEN 19 AND 22 THEN 'Απογευματινή Αιχμή'
 ELSE 'Εκτός Αιχμής'
 END AS 'Traffic_Period'
FROM fact_air_quality f
JOIN dim_time t ON f.time_key = t.time_key
GROUP BY t.hour, Traffic_Period
ORDER BY t.hour;
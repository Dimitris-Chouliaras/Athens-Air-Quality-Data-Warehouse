-- Καταμέτρηση υπερβάσεων του ορίου ασφαλείας PM10 ανά γεωγραφικό τομέα.
SELECT s.geographic_sector, COUNT(*) AS exceedances_count
FROM fact_air_quality f
JOIN dim_station s ON f.station_key = s.station_key
JOIN dim_pollutant_metadata m ON m.pollutant_name = 'PM10'
WHERE f.pm10 > m.eu_safe_limit
GROUP BY s.geographic_sector
ORDER BY exceedances_count DESC;
USE air_quality_athens;

SET FOREIGN_KEY_CHECKS = 0;
SET AUTOCOMMIT = 0;

LOAD DATA INFILE 'C:/xampp/mysql/data/fact_air_quality.csv' 
INTO TABLE fact_air_quality 
CHARACTER SET utf8mb4 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(@v_wind_u, @v_wind_v, @v_dew, @v_soil, @v_precip, @v_temp, @v_hum, @v_pm10, @v_pm25, @v_no2, @v_o3, station_key, time_key, terrain_key)
SET 
    wind_speed_u = REPLACE(@v_wind_u, ',', '.'),
    wind_speed_v = REPLACE(@v_wind_v, ',', '.'),
    dewpoint_temp = REPLACE(@v_dew, ',', '.'),
    soil_temp = REPLACE(@v_soil, ',', '.'),
    total_precipitation = REPLACE(@v_precip, ',', '.'),
    temp = REPLACE(@v_temp, ',', '.'),
    relative_humidity = REPLACE(@v_hum, ',', '.'),
    pm10 = NULLIF(REPLACE(@v_pm10, ',', '.'), ''),
    pm2_5 = NULLIF(REPLACE(@v_pm25, ',', '.'), ''),
    no2 = NULLIF(REPLACE(@v_no2, ',', '.'), ''),
    o3 = NULLIF(REPLACE(@v_o3, ',', '.'), ''); -- ΤΩΡΑ ΕΙΝΑΙ ΣΩΣΤΟ: Εχει δύο παραμέτρους!

COMMIT;
SET FOREIGN_KEY_CHECKS = 1;
SET AUTOCOMMIT = 1;
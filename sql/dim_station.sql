USE air_quality_athens;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE dim_station;
SET FOREIGN_KEY_CHECKS = 1;

LOAD DATA INFILE 'C:/xampp/mysql/data/dim_station.csv' 
INTO TABLE dim_station 
CHARACTER SET utf8mb4 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(station_key, source_station_id, station_name, @vlat, @vlong, geographic_sector)
SET 
    latitude = REPLACE(@vlat, ',', '.'),
    longitude = REPLACE(@vlong, ',', '.');
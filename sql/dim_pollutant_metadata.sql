USE air_quality_athens;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE dim_pollutant_metadata;
SET FOREIGN_KEY_CHECKS = 1;

LOAD DATA INFILE 'C:/xampp/mysql/data/dim_pollutant_metadata.csv' 
INTO TABLE dim_pollutant_metadata 
CHARACTER SET utf8mb4 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS;
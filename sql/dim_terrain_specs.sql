SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE dim_terrain_specs;
SET FOREIGN_KEY_CHECKS = 1;

LOAD DATA INFILE 'C:/xampp/mysql/data/dim_terrain_specs.csv' 
INTO TABLE dim_terrain_specs 
CHARACTER SET utf8mb4 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(terrain_key, @vhigh, @vlow, vegetation_index)
SET 
    vegetation_high = REPLACE(@vhigh, ',', '.'),
    vegetation_low = REPLACE(@vlow, ',', '.');
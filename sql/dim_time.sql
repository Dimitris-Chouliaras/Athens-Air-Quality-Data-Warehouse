SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE dim_time;
SET FOREIGN_KEY_CHECKS = 1;

LOAD DATA INFILE 'C:/xampp/mysql/data/dim_time.csv' 
INTO TABLE dim_time 
CHARACTER SET utf8mb4 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' 
IGNORE 1 ROWS
(time_key, @vdate, hour, month, year, day_of_week, is_weekend)
SET full_date = STR_TO_DATE(REPLACE(@vdate, ',000', ''), '%Y-%m-%d %H:%i:%s');
-- Δημιουργία της Βάσης Δεδομένων
CREATE DATABASE IF NOT EXISTS air_quality_athens;
USE air_quality_athens;

-- Πίνακας Διάστασης Σταθμών
CREATE TABLE dim_station (
    station_key INT PRIMARY KEY,
    source_station_id INT,
    station_name VARCHAR(255),
    latitude DECIMAL(10, 6),
    longitude DECIMAL(10, 6),
    geographic_sector VARCHAR(255)
);

-- Πίνακας Διάστασης Χρόνου
CREATE TABLE dim_time (
    time_key INT PRIMARY KEY,
    full_date DATETIME,
    hour INT,
    month INT,
    year INT,
    day_of_week VARCHAR(20),
    is_weekend VARCHAR(3)
);

-- Πίνακας Διάστασης Χαρακτηριστικών Εδάφους
CREATE TABLE dim_terrain_specs (
    terrain_key INT PRIMARY KEY,
    vegetation_high FLOAT,
    vegetation_low FLOAT,
    vegetation_index VARCHAR(255)
);

-- Πίνακας Διάστασης Κατηγοριών Ποιότητας Αέρα (Disconnected)
CREATE TABLE dim_aqi_categories (
    aqi_category_key INT PRIMARY KEY,
    pollutant_name VARCHAR(50),
    category_name VARCHAR(50),
    lower_limit FLOAT,
    upper_limit FLOAT,
    health_advice TEXT,
    color_code VARCHAR(20)
);

-- Πίνακας Διάστασης Μεταδεδομένων Ρύπων (Disconnected)
CREATE TABLE dim_pollutant_metadata (
    pollutant_key INT PRIMARY KEY,
    pollutant_name VARCHAR(50),
    full_name VARCHAR(255),
    unit VARCHAR(20),
    eu_safe_limit FLOAT,
    limit_description VARCHAR(255),
    health_impact_description TEXT
);

-- Πίνακας Γεγονότων (Fact Table)
CREATE TABLE fact_air_quality (
    station_key INT,
    time_key INT,
    terrain_key INT,
    no2 FLOAT,
    o3 FLOAT,
    pm10 FLOAT,
    pm2_5 FLOAT,
    temp FLOAT,
    relative_humidity FLOAT,
    total_precipitation FLOAT,
    soil_temp FLOAT,
    dewpoint_temp FLOAT,
    wind_speed_u FLOAT,
    wind_speed_v FLOAT,
    -- Σχέσεις Foreign Keys (Star Schema)
    FOREIGN KEY (station_key) REFERENCES dim_station(station_key),
    FOREIGN KEY (time_key) REFERENCES dim_time(time_key),
    FOREIGN KEY (terrain_key) REFERENCES dim_terrain_specs(terrain_key)
);
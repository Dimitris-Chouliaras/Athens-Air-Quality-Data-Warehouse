CREATE INDEX idx_station ON fact_air_quality(station_key);
CREATE INDEX idx_time ON fact_air_quality(time_key);
CREATE INDEX idx_terrain ON fact_air_quality(terrain_key);
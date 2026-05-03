Athens Air Quality Data Warehouse (2020-2023)
Project Overview
This project involves the design and implementation of a robust Data Warehouse using a Star Schema architecture to monitor and analyze air quality and meteorological conditions in Athens, Greece. The analysis spans from May 2020 to May 2023, processing over 1.7 million hourly records.  

The goal is to transform raw environmental data into actionable insights regarding public health and urban pollution patterns.  

##Key Features
Architecture: Optimized Star Schema with a central Fact Table (fact_air_quality) and 5 Dimension Tables.  

ETL Pipeline: Comprehensive Extract, Transform, Load process using Power Query (Power BI) and DAX Studio for large-scale data migration.  

Data Cleaning: Advanced SQL scripting to handle NULL values, coordinate binning (Spatial Binning), and metric conversions.  

Advanced Analytics: SQL-based insights on peak pollution hours, traffic impact (Weekdays vs. Weekends), and seasonal correlations between pollutants like NO2 and Ozone.  

Tech Stack
Database: MySQL 8.0  

Data Transformation: Microsoft Power BI & Power Query  

Migration: DAX Studio (In-Memory to CSV export)  

Modeling: Visual Paradigm (ERD Design)  

Visualization: Microsoft Excel (Advanced Charting & Pivot Tables)  

Data Architecture
The warehouse is built on a Star Schema to ensure high performance and data integrity:  

Fact Table: fact_air_quality (1,726,464 records).  

Dimensions: dim_station, dim_time, dim_terrain_specs, dim_aqi_categories, dim_pollutant_metadata.  

Key Insights from Analysis
Peak Traffic Impact: NO2 levels peak during morning (05:00-08:00) and evening (19:00-22:00) hours, directly correlating with urban commute.  

The Weekend Effect: NO2 levels drop significantly during weekends, while PM10 and O3 show different patterns due to heating and photochemical reactions.  

Spatial Analysis: The Central Sector of Athens exhibits the highest frequency of limit exceedances.  

How to Use
Schema Setup: Execute the DDL.sql script to create the database structure.

Data Loading: Use the LOAD DATA INFILE commands provided in the documentation for optimized bulk loading.

Run Queries: Use the scripts in the /queries folder to reproduce the statistical analysis.

Credits
Data Sources: Copernicus Atmosphere Monitoring Service (CAMS) & Zenodo.  

Standards: European Environment Agency (EEA) Air Quality Index.

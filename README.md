# Athens Air Quality Data Warehouse (2020-2023) 🌿📊

## 📌 Project Overview
This project involves the design and implementation of a robust **Data Warehouse** using a **Star Schema** architecture to monitor and analyze air quality and meteorological conditions in Athens, Greece. The analysis spans from May 2020 to May 2023, processing over **1.7 million hourly records**.

The goal is to transform raw environmental data into actionable insights regarding public health and urban pollution patterns.

---

## 🚀 Key Features
*   **Architecture**: Optimized Star Schema with a central Fact Table (`fact_air_quality`) and 5 Dimension Tables.
*   **ETL Pipeline**: Comprehensive Extract, Transform, Load process using **Power Query** (Power BI) and **DAX Studio** for large-scale data migration.
*   **Data Cleaning**: Advanced SQL scripting to handle NULL values, coordinate binning (Spatial Binning), and metric conversions.
*   **Advanced Analytics**: SQL-based insights on peak pollution hours, traffic impact (Weekdays vs. Weekends), and seasonal correlations between pollutants like NO2 and Ozone.

---

## 🛠 Tech Stack
*   **Database**: MySQL 8.0[cite: 1]
*   **Data Transformation**: Microsoft Power BI & Power Query[cite: 1]
*   **Migration**: DAX Studio (In-Memory to CSV export)[cite: 1]
*   **Modeling**: Visual Paradigm (ERD Design)[cite: 1]
*   **Visualization**: Microsoft Excel (Advanced Charting & Pivot Tables)[cite: 1]

---

## 📐 Data Architecture
The warehouse is built on a Star Schema to ensure high performance and data integrity:[cite: 1]
*   **Fact Table**: `fact_air_quality` (1,726,464 records).[cite: 1]
*   **Dimensions**: `dim_station`, `dim_time`, `dim_terrain_specs`, `dim_aqi_categories`, `dim_pollutant_metadata`.[cite: 1]

---

## 💡 Key Insights
*   **Peak Traffic Impact**: NO2 levels peak during morning (05:00-08:00) and evening (19:00-22:00) hours, directly correlating with urban commute.[cite: 1]
*   **The Weekend Effect**: NO2 levels drop significantly during weekends, while PM10 and O3 show different patterns due to heating and photochemical reactions.[cite: 1]
*   **Spatial Analysis**: The Central Sector of Athens exhibits the highest frequency of limit exceedances.[cite: 1]

---

## 📁 Project Structure & Large Files
Due to GitHub's file size limits, some large assets are managed as follows:[cite: 1]
*   **/sql_scripts**: Contains DDL for schema creation and analytical queries.[cite: 1]
*   **/documentation**: Final report in PDF format.[cite: 1]
*   **/datasets**: Due to size (>25MB), the full dataset can be downloaded from [Zenodo](https://zenodo.org/records/11220965) and [Kaggle](https://www.kaggle.com/datasets/yekenot/air-quality-monitoring-in-european-cities).[cite: 1]
*   **/power_bi**: The `.pbix` file is available via [insert your Google Drive link here] if it exceeds upload limits.[cite: 1]

---

## 🎓 Credits
*   **Data Sources**: Copernicus Atmosphere Monitoring Service (CAMS) & Zenodo.[cite: 1]
*   **Standards**: European Environment Agency (EEA) Air Quality Index.[cite: 1]
*   **Author**: Chouliaras Dimitrios[cite: 1]

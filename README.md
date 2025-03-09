# Snowflake & Azure Data Pipeline

## Overview  
This project demonstrates the end-to-end data pipeline from Azure Data Lake Storage (ADLS) to Snowflake, processing raw data into analytics-ready tables. The pipeline follows the **Bronze-Silver-Gold** architecture to ensure efficient ETL operations.

## Project Flow  

### Setup  
- Create Azure and Snowflake accounts.  
- Set up an Azure Data Lake Storage (ADLS) account and load data:  
  - **Customers** (CSV format)  
  - **Products** (JSON format)  
  - **Orders** (Parquet format)  
- Integrate Azure with Snowflake.  
- Create an external stage in Snowflake for data ingestion.  

### Bronze Layer (Raw Data Ingestion)  
- Load raw data into Snowflake tables.  
- Create appropriate file formats.  
- Verify data integrity and create ingestion tasks for all three datasets (Customers, Products, Orders).  

### Silver Layer (Data Cleaning & Processing)  
- Create Silver tables.  
- Set up streams to track incremental data.  
- Clean and transform data before loading.  
- Define and execute transformation tasks.  

### Gold Layer (Analytics-Ready Data)  
- Apply business logic transformations using stored procedures.  
- Execute tasks sequentially:  
  - **Bronze Task → Stream Execution → Silver Task**  
- Create business views for analytics and reporting.  

## Next Steps & Future Enhancements  
- Implement **error handling and monitoring** for data quality.  
- Optimize **query performance** for large datasets in Snowflake.  
- Extend the pipeline by integrating **BI tools** like Power BI or Tableau for visualization.  
- Explore **machine learning use cases** on the processed data.  

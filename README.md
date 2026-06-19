# Chicago Crime ETL Pipeline & Analytics Dashboard

An end-to-end data engineering pipeline that automates the extraction, transformation, and loading (ETL) of public safety records from the City of Chicago, finalized with an interactive Power BI dashboard.

## 🚀 Technical Architecture Overview
* **Data Source:** Chicago Data Portal REST API (SoQL API)
* **Ingestion & Transformation:** Python & Pandas (Handling data cleaning, type-casting, and feature engineering)
* **Storage Layer:** MySQL Relational Database (Schema optimization using InnoDB)
* **Business Intelligence:** Power BI Desktop via ODBC Connection (Custom DAX modeling)

## 📁 Repository Structure
* `chicago_crime_project.ipynb` - Core Jupyter Notebook containing the full programmatic Python ETL code blocks.
* `chicago_crime_dashboard.pbix` - Power BI business intelligence workspace file.

## 💡 Key Challenges Solved
* Managed subtle data structure differences between Python DataFrames and strict MySQL relational tables (such as mapping NumPy `NaN` values to absolute SQL `NULL` structures).
* Normalized data inconsistencies by standardizing text casing and explicit column data type casting.

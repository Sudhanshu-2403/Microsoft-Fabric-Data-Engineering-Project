# 🚕 End-to-End NYC Taxi Data Analytics using Microsoft Fabric

## 📌 Project Overview

This project demonstrates the design and implementation of an end-to-end data engineering and analytics solution using Microsoft Fabric.

The solution ingests NYC Taxi trip data into a Lakehouse, processes it through staging and presentation layers, performs data quality checks and transformations, loads curated data into a Data Warehouse, and delivers business insights through Semantic Models and Power BI dashboards.

The project showcases modern Microsoft Fabric capabilities including Data Pipelines, Lakehouse, Data Warehouse, Dataflow Gen2, Semantic Models, and Power BI reporting.

---

## 🎯 Business Objective

The objective of this project is to build a scalable analytics platform capable of:

* Processing large volumes of taxi trip data
* Automating data ingestion and transformation
* Maintaining metadata-driven processing
* Implementing data quality checks
* Providing business-ready datasets for reporting
* Delivering analytical insights through Power BI dashboards

---

## 🏗️ Solution Architecture

<img width="1616" height="973" alt="Solution Architecture" src="https://github.com/user-attachments/assets/6642350b-d2e4-4541-96d6-9b3e40327382" />


### Data Flow

Raw NYC Taxi Data

⬇

Lakehouse (Landing Layer)

⬇

Staging Data Pipelines

⬇

Data Warehouse (Staging Schema)

⬇

Data Cleaning & Metadata Logging

⬇

Dataflow Gen2 Transformations

⬇

Presentation Layer

⬇

Semantic Model

⬇

Power BI Dashboard

---

## 🛠️ Technologies Used

| Technology        | Purpose                            |
| ----------------- | ---------------------------------- |
| Microsoft Fabric  | Unified Analytics Platform         |
| OneLake           | Centralized Data Storage           |
| Lakehouse         | Raw Data Storage                   |
| Data Pipelines    | Data Ingestion & Orchestration     |
| Data Warehouse    | Structured Data Storage            |
| Dataflow Gen2     | Data Transformation                |
| SQL               | Data Processing                    |
| Stored Procedures | Business Logic & Metadata Handling |
| Semantic Model    | Reporting Layer                    |
| Power BI          | Dashboarding & Visualization       |

---

## 📂 Project Components

### 1. Fabric Workspace

A dedicated Microsoft Fabric workspace was created to host all project assets including:

* Data Pipelines
* Lakehouse
* Data Warehouse
* Dataflows
* Semantic Models
* Power BI Reports


<img width="959" height="436" alt="Screenshot 2026-06-11 120431" src="https://github.com/user-attachments/assets/c904abaa-e9c3-4aa2-b159-222681910a37" />


---

### 2. Data Landing Layer

Source NYC Taxi datasets were uploaded into a Lakehouse.

This layer acts as the raw data repository and serves as the starting point for downstream processing.

<img width="959" height="439" alt="Screenshot 2026-06-11 120633" src="https://github.com/user-attachments/assets/35b26dec-52cb-48c4-a0f9-84a44965d822" />


---

### 3. Staging Layer Processing

A lookup pipeline was created to move reference data from the Lakehouse into staging tables within the Data Warehouse.

Pipeline:

```text
pl_stg_lookup
```

This pipeline loads lookup datasets required during data transformation and enrichment.

---

### 4. Taxi Trip Data Ingestion Pipeline

A dedicated pipeline was developed to process taxi trip records.

Pipeline:

```text
pl_stg_processing_nyctaxi
```

Key activities include:

* Identifying latest processed records
* Incremental data loading
* Variable management
* Pre-copy scripts
* Loading staging tables

<img width="864" height="214" alt="Screenshot 2026-06-11 123000" src="https://github.com/user-attachments/assets/c864cce6-21a5-4367-b847-94964413f3e0" />


---

### 5. Data Quality & Cleansing

Stored Procedures were implemented to improve data quality.

Key operations:

* Remove outlier dates
* Validate incoming data
* Standardize staging records
* Prepare datasets for transformation

This layer ensures that downstream analytics are based on reliable and consistent data.

---

### 6. Metadata-Driven Processing

A metadata framework was implemented to track pipeline execution and processing status.

Components:

* Metadata tables
* Processing logs
* Audit tracking
* Incremental load management

Benefits:

* Improved monitoring
* Better troubleshooting
* Enhanced maintainability

---

### 7. Presentation Layer Processing

Pipeline:

```text
pl_pres_processing_nyctaxi
```

This pipeline transforms staging data into business-ready datasets.

Activities include:

* Dataflow Gen2 execution
* Stored Procedure execution
* Metadata updates
* Final warehouse loading

<img width="456" height="193" alt="Screenshot 2026-06-12 120942" src="https://github.com/user-attachments/assets/22d6d278-fb29-4447-90c7-47c331081378" />


---

### 8. Dataflow Gen2 Transformations

Dataflow Gen2 was used to:

* Clean source data
* Merge lookup datasets
* Transform attributes
* Apply business rules
* Create reporting-ready datasets

The transformed data is loaded into the final presentation table:

```sql
dbo.nyctaxi_yellow
```

---

### 9. End-to-End Orchestration

An orchestration pipeline was developed to automate the complete workflow.

Pipeline:

```text
pl_orchestrate_nyctaxi
```

This pipeline invokes:

* pl_stg_processing_nyctaxi
* pl_pres_processing_nyctaxi

Benefits:

* End-to-end automation
* Reduced manual effort
* Improved operational efficiency

<img width="461" height="188" alt="Screenshot 2026-06-12 130942" src="https://github.com/user-attachments/assets/fda7a296-6b29-4926-9b74-c8610144ea3e" />


---

### 10. Semantic Model

A Semantic Model was created to simplify reporting and analytics.

Features:

* Business-friendly data structure
* Optimized reporting layer
* Reusable analytical model

<img width="779" height="415" alt="Screenshot 2026-06-16 124722" src="https://github.com/user-attachments/assets/046c5f42-efe0-4e92-86dd-78b3a894fe57" />


---

### 11. Power BI Dashboard

Interactive dashboards were developed to visualize taxi trip performance and operational insights.

Dashboard capabilities:

* Trend Analysis
* Operational Monitoring
* Performance Metrics
* Business Insights

<img width="940" height="411" alt="Screenshot 2026-06-16 125448" src="https://github.com/user-attachments/assets/da93bf9f-f2da-4f69-8f42-228876b716c2" />


---

## 📈 Key Skills Demonstrated

### Data Engineering

* ETL / ELT Design
* Data Pipelines
* Incremental Loading
* Data Warehousing
* Metadata Management
* Data Quality Frameworks

### Microsoft Fabric

* Lakehouse
* OneLake
* Data Warehouse
* Dataflow Gen2
* Semantic Models
* Fabric Pipelines

### Analytics & BI

* Data Modeling
* Business Intelligence
* Dashboard Development
* Power BI Reporting

### SQL Development

* Stored Procedures
* Data Validation
* Data Transformation
* Metadata Logging

---

## 🚀 Key Learnings

Through this project I gained practical experience in:

* Building end-to-end analytics solutions using Microsoft Fabric
* Implementing layered data architecture
* Designing metadata-driven pipelines
* Performing data cleansing and transformation
* Creating reporting-ready datasets
* Developing semantic models for business reporting
* Delivering analytical dashboards using Power BI

---

## 📷 Project Walkthrough

A detailed walkthrough containing screenshots and implementation steps is available in:

```text
Project_Walkthrough.pdf
```

---

## 👨‍💻 Author

Sudhanshu

Microsoft Fabric | Power BI | Data Engineering | Analytics
GitHub Portfolio Project


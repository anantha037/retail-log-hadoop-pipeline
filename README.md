# Distributed Retail Log Analytics Pipeline (Hadoop POC)

![Hadoop](https://img.shields.io/badge/Hadoop-3.x-yellow)
![Hive](https://img.shields.io/badge/Hive-Analytics-blue)
![MapReduce](https://img.shields.io/badge/MapReduce-Streaming-green)


## 📌 Overview

This project demonstrates a production-inspired Big Data pipeline built
using the Hadoop ecosystem.\
It showcases how distributed storage, parallel processing, and SQL-based
analytics can be combined to analyze retail-style transaction data using
HDFS, MapReduce Streaming, and Hive.

Instead of using toy academic examples, this repository presents a
structured Proof-of-Concept (POC) that reflects real-world data
engineering workflow design.

------------------------------------------------------------------------

## 🧱 Architecture

    Local Dataset
          │
          ▼
    HDFS (Distributed Storage)
          │
          ▼
    MapReduce Streaming (Python)
          │
          ▼
    Hive External Table (SQL Analytics)

------------------------------------------------------------------------

## 🛠 Technologies Used

-   Hadoop Distributed File System (HDFS)
-   MapReduce Streaming (Python)
-   Apache Hive
-   Sqoop (Conceptual Ingestion Layer)
-   Ubuntu WSL + VS Code

------------------------------------------------------------------------

## 📊 Use Case

Retail-style transaction logs are ingested into HDFS as the raw data
layer.\
A custom MapReduce job aggregates transactions by day to simulate
business analytics reporting.\
Hive external tables are used to query distributed data using SQL
without duplication.

------------------------------------------------------------------------

## 🚀 Pipeline Flow

### 1️⃣ Data Layer

Dataset stored inside the `/data` directory and uploaded into HDFS.

### 2️⃣ Processing Layer

Python-based MapReduce scripts perform distributed aggregation.

### 3️⃣ Analytics Layer

Hive external table enables SQL querying on HDFS data.

### 4️⃣ Ingestion Design

Sqoop example demonstrates how relational databases could integrate into
this pipeline.

------------------------------------------------------------------------

## 📁 Project Structure

    retail-log-hadoop-pipeline/
    │
    ├── data/
    │   └── retail_logs.csv              # Raw dataset
    │
    ├── mapreduce/
    │   ├── mapper.py                    # MapReduce mapper logic
    │   └── reducer.py                   # MapReduce reducer logic
    │
    ├── hive/
    │   └── analytics.sql                # Hive database & query definitions
    │
    ├── ingestion/
    │   └── sqoop_example.txt            # Sqoop ingestion reference
    │
    ├── scripts/
    │   └── run_pipeline.sh              # One-command pipeline execution
    │
    └── README.md

------------------------------------------------------------------------

## ⚙️ How to Run the Pipeline

``` bash
bash scripts/run_pipeline.sh
```

------------------------------------------------------------------------

## 📈 Example Output

    Fri   19
    Sat   87
    Sun   76
    Thur  61

------------------------------------------------------------------------

## 🎯 Key Learning Outcomes

-   Distributed storage using HDFS
-   Parallel analytics using MapReduce Streaming
-   SQL-based querying with Hive external tables
-   Designing scalable ingestion architecture

------------------------------------------------------------------------

## 🧠 Engineering Notes

-   The column name `meal_time` was used instead of `time` to avoid
    conflicts with Hive reserved keywords.
-   External tables were used in Hive to prevent data duplication.

------------------------------------------------------------------------

## 🔮 Future Improvements

-   Integrate Apache Spark for faster analytics
-   Add ML feature engineering stage
-   Automate pipeline execution using CI/CD

# Retail Log Analytics Pipeline using Hadoop

## 📌 Overview

This project demonstrates a production-inspired Big Data pipeline built using the Hadoop ecosystem.
The goal is to showcase how distributed storage, parallel processing, and SQL-based analytics can be
combined to analyze retail-style transaction data.

Instead of using toy examples, this project simulates a real-world data engineering workflow.

---

## 🧱 Architecture

Local Dataset → HDFS → MapReduce Streaming → Hive Analytics

---

## 🛠 Technologies Used

- Hadoop Distributed File System (HDFS)
- MapReduce Streaming (Python)
- Apache Hive
- Sqoop (Conceptual Ingestion Layer)
- Ubuntu (WSL) + VS Code

---

## 📊 Use Case

Retail-style transaction logs are ingested into HDFS.
A MapReduce job aggregates transactions by day to simulate business analytics.
Hive external tables are then used to query the distributed dataset using SQL.

---

## 🚀 Pipeline Steps

### 1️⃣ Data Layer
Dataset stored inside `/data` and uploaded into HDFS.

### 2️⃣ Processing Layer
Custom Python MapReduce scripts calculate daily transaction counts.

### 3️⃣ Analytics Layer
Hive external tables enable SQL-based analytics without duplicating data.

### 4️⃣ Ingestion Design
Sqoop example included to demonstrate how relational databases can integrate into the pipeline.

---

## 📁 Project Structure


data/ → Raw dataset
mapreduce/ → Mapper & Reducer scripts
hive/ → Hive analytics queries
ingestion/ → Sqoop ingestion example
scripts/ → Pipeline execution scripts



---

## 🎯 Key Learning Outcomes

- Distributed storage using HDFS
- Parallel processing with MapReduce
- Schema-based analytics using Hive
- Designing scalable ingestion workflows

---

## 🧠 Notes

The `meal_time` column name was used instead of `time` to avoid conflicts with Hive reserved keywords.

---

## 🔮 Future Improvements

- Integrate Spark for faster analytics
- Add ML feature engineering stage
- Automate pipeline execution using CI/CD



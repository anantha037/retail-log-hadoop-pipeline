-- Create project database
CREATE DATABASE IF NOT EXISTS retail_analytics;

USE retail_analytics;

-- External table pointing to HDFS data
CREATE EXTERNAL TABLE retail_logs(
total_bill FLOAT,
tip FLOAT,
sex STRING,
smoker STRING,
day STRING,
meal_time STRING,
size INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
LOCATION '/retail';

-- Analytics query
SELECT day, COUNT(*) FROM retail_logs GROUP BY day;

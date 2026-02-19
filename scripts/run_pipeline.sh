#!/bin/bash

echo "Starting Hadoop services..."
start-dfs.sh
start-yarn.sh

echo "Uploading dataset to HDFS..."
hdfs dfs -mkdir -p /retail
hdfs dfs -put -f data/retail_logs.csv /retail

echo "Running MapReduce analytics..."
hdfs dfs -rm -r -f /retail_output

mapred streaming \
-files mapreduce/mapper.py,mapreduce/reducer.py \
-input /retail/retail_logs.csv \
-output /retail_output \
-mapper "python3 mapper.py" \
-reducer "python3 reducer.py"

echo "Pipeline execution complete."

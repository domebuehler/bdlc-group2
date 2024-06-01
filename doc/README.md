# Group 2 - Analyze parking violations in NYC

## Table of Contents
- [Abstract](#abstract)
- [Cluster](#cluster)
- [Dataset](#dataset)
- [Prototyping - Preprocessing - Dataflow](#prototyping---preprocessing---dataflow)
- [Analysis](#analysis)
- [Learnings](#learnings)

## Abstract

The "Analyze Parking Violations in NYC" project aims to leverage big data techniques, particularly clustering, to gain insights into parking violations within New York City. Utilizing a comprehensive dataset of parking violations, the project involves analyzing the distribution, frequency, and the amount of fines issued for these violations across the city.

Our methodology encompasses data preparation, preprocessing, and analytical phases. The data is initially prepared and stored using HDFS and processed using Spark with PySpark in standalone mode. JupyterLab is employed for coding and executing the analysis, ensuring an interactive and efficient workflow. In the preprocessing stage, raw CSV data is converted into Parquet format to optimize storage and query performance. The Parquet files are saved to HDFS using partitions to further enhance query efficiency. Analytical queries are then performed on the partitioned Parquet data to extract valuable insights.

The project infrastructure includes a cluster setup with one master and four worker nodes, totaling 16 Spark Executors, 64 Cores, and 60 GB RAM, which ensures robust and scalable data processing capabilities.

This project highlights the effectiveness of big data technologies in handling and analyzing large datasets to provide actionable insights.

## Cluster

### Nodes

| Machine                 | Role    |
| ----------------------- | ------- |
| bdlc-01.labservices.ch  | Master  |
| bdlc-08.labservices.ch  | Secondary Name Node / Worker  |
| bdlc-04.labservices.ch  | Worker  |
| bdlc-05.labservices.ch  | Worker  |
| bdlc-09.labservices.ch  | Worker  |

### Tech Stack

We use the following technologies:
- HDFS to store all the data
- Spark (with Pyspark) in standalone mode to proccess all the data
- Jupyterlab for coding and code execution
- Git with github for code versioning and collaboration

### Resources

Distribution of resources:

![Resources](diagrams/resources.jpg)

Total resources:

- 16 Spark Executors
- 64 Cores
- 60 GB RAM

### Setup Testing

See [Testing](../src/0_Cluster_Testing/Testing.ipynb)

### Webservices

[HDFS](http://bdlc-01.labservices.ch:9870/dfshealth.html#tab-overview)

[SPARK](http://bdlc-01.labservices.ch:8080/)

[SPARK HISTORYSERVER](http://bdlc-01.labservices.ch:18080/)

[JUPYTERLAB](http://bdlc-01.labservices.ch:8888/lab) with password `123456*`

## Dataset

See [Data](../src/1_Data/Prepare_Data.ipynb)

## Prototyping - Preprocessing - Dataflow 

See [Prototyping - Preprocessing - Dataflow](../src/2_Preprocessing/CSV%20to%20Parquet.ipynb)

## Analysis

See [Analysis](../src/3_Analysis/Queries.ipynb)

## Learnings

TBD

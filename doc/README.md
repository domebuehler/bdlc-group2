# BDLC FS24 - Group 2 - Analyze parking violations in NYC

## Team members
- Leander Duft
- Robin Matter
- Ilija Milovanovic
- Dominik Bühler
- Denis Huelin

## Table of Contents
- [Abstract](#abstract)
- [Cluster](#cluster)
- [Dataset](#dataset)
- [Prototyping - Preprocessing - Dataflow](#prototyping---preprocessing---dataflow)
- [Analysis](#analysis)
- [Learnings](#learnings)

## Abstract

The "Analyze Parking Violations in NYC" project aims to leverage big data techniques, particularly clustering, to gain insights into parking violations within New York City. Utilizing a comprehensive dataset of parking violations, the project involves analyzing the distribution, frequency, and amount of fines issued for these violations across the city.

Our methodology encompasses data preparation, preprocessing, and analytical phases. The data is initially prepared and stored using HDFS and processed with Spark and PySpark in standalone mode. JupyterLab is employed for coding and executing the analysis, ensuring an interactive and efficient workflow. In the preprocessing stage, raw CSV data is converted into Parquet format to optimize storage and query performance. The Parquet files are saved to HDFS using partitions to further enhance query efficiency. Analytical queries are then performed on the partitioned Parquet data to extract valuable insights.

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

See [Dataset](../src/1_Data/Prepare_Data.ipynb)

## Prototyping - Preprocessing - Dataflow 

See [Prototyping - Preprocessing - Dataflow](../src/2_Preprocessing/CSV%20to%20Parquet.ipynb)

## Analysis

See [Analysis](../src/3_Analysis/Queries.ipynb)

## Learnings
Preprocessing was the biggest challenge of the project. For the most part, we were able to get the data into the structure we wanted without any problems.
With the help of `pyspark.sql.types`, most things went smoothly. The problems arose when we serialized the time column.
The data was not always in the correct format, and we had to use regex to cast it into our structure.
We used pandas to extract the metadata, since pyspark does not have this functionality built-in.

The biggest learning was partitioning the final RDD before writing it to HDFS.
Choosing the number of partitions was critical for optimizing our queries. We documented this choice [here](../src/2_Preprocessing/CSV%20to%20Parquet.ipynb) in the section `Write Parquet to HDFS`.

In addition to this one tricky problem, we had to overcome smaller challenges along the way and were able to learn a lot from them. Practicing what we learned in the lectures certainly helped all of us to understand and apply the material better.

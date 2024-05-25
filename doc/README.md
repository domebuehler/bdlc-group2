# Group 2 - Analysis parking violations in NYC

This file provides a short overview of the project work for group 2. All code and other documentation can be found directly in the Jupyter Notebooks.

## Nodes

| Machine                 | Role    |
| ----------------------- | ------- |
| bdlc-01.labservices.ch  | Master  |
| bdlc-08.labservices.ch  | Secondary Name Node / Worker  |
| bdlc-04.labservices.ch  | Worker  |
| bdlc-05.labservices.ch  | Worker  |
| bdlc-09.labservices.ch  | Worker  |

## Tech Stack

We use the following technologies:
- HDFS to store all the data
- Spark (with Pyspark) in standalone mode to proccess all the data
- Jupyterlab for coding and code execution
- Git with github for code versioning and collaboration

## Resources

### Distribution of resources

![Resources](diagrams/resources.jpg)

### Total resources

- 16 Spark Executors
- 64 Cores
- 60 GB RAM

## Webservices

[HDFS](http://bdlc-01.labservices.ch:9870/dfshealth.html#tab-overview)

[SPARK](http://bdlc-01.labservices.ch:8080/)

[SPARK HISTORYSERVER](http://bdlc-01.labservices.ch:18080/)

[JUPYTERLAB](http://bdlc-01.labservices.ch:8888/lab) with password `123456*`

## Dataset

The data consists of parking violations issued in New York City.

The data is separated across multiple datasets, each for one fiscal year. The datasets can be found here [NYC OpenData](https://data.cityofnewyork.us/browse?Data-Collection_Data-Collection=DOF+Parking+Violations+Issued&q=&sortBy=alpha&utf8=%E2%9C%93).

## Analysis

### Possible Questions

- In which season are parking violations most likely?
- On which street are the most violations recorded?
- Which body type / make of vehicle is most likely to be fined?

### Definite Questions

1. Whats the most amount that was paid in violations and by which Plate ID?
2. At what hour of the day is it most likely to get a ticket?
3. Which percentage of the total violation "income" has been provided by the top 10% (top 10% amount of tickets)?

# Group 2 - Analysis parking violations in NYC

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
- Git with github for code versioning

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

The data is separated across multiple datasets, each for one fiscal year. The datasets can be found here [NYC OpenData](https://opendata.cityofnewyork.us/).

The parking violations for fiscal year 2024 can be found here [Dataset for fiscal year 2024](https://data.cityofnewyork.us/City-Government/Parking-Violations-Issued-Fiscal-Year-2024/pvqr-7yc4/about_data).

## Possible Questions

- In which season are parking violations most likely?
- On which street are the most violations recorded?
- Which body type / make of vehicle is most likely to be fined?

## Answered Questions

1. Whats the most amount that was paid in violations and by which Plate ID?
2. At what hour of the day is it most likely to get a ticket?
3. Which percentage of the total violation "income" has been provided by the top 10% (top 10% amount of tickets)?
4. How much money do the top 10 most issued violations bring in?

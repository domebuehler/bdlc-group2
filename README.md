# {project title} Group 2

## Nodes

**Master**

- bdlc-01.labservices.ch

**Secondary Namenode**

- bdlc-08.labservices.ch

**Workers**

- bdlc-04.labservices.ch
- bdlc-05.labservices.ch
- bdlc-08.labservices.ch
- bdlc-09.labservices.ch

## Spark

### Config
- 4 workers with each 4 executors = 16 executors
```
spark.executor.memory 15g
spark.executor.instances 16
spark.executor.cores 4
```

## Services

[HDFS](http://bdlc-01.labservices.ch:9870/dfshealth.html#tab-overview)
[SPARK](http://bdlc-01.labservices.ch:8080/)
[SPARK HISTORYSERVER](http://bdlc-01.labservices.ch:18080/) 

from pyspark.sql.functions import mean, max, min, col ,count
from pyspark.sql import SparkSession

spark = (
    SparkSession.builder.appName("ExerciseSpark")
    .getOrCreate()
)

# ler os dados do Enem 2019

enem = (
    spark
    .read
    .format("csv")
    .option("header", True)
    .option("inferSchema", True)
    .option("delimiter",";")
    .load("s3://datalake-wgc-igti-edc/raw-data/enem/")
)


(
    enem
    .write
    .mode("overwrite")
    .partitionBy("year")
    .save("s3://datalake-wgc-igti-edc/staging/enem")
)
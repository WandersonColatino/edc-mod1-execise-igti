# HCL - Hashicorp Configuration Language
# Linguagem declarativa

resource "aws_s3_bucket_object" "codigo_spark" {
  bucket = aws_s3_bucket.datalake.id
  key    = "emr-code/pyspark/job_spark_from_tf.py"
  acl    = "private"
  source = "C:/Users/gcwan/OneDrive/Área de Trabalho/Scripts/PySpark/job-spark.py"
  etag   = filemd5("C:/Users/gcwan/OneDrive/Área de Trabalho/Scripts/PySpark/job-spark.py")

}

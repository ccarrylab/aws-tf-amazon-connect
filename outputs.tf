output "connect_data_storage_s3_bucket" {
  value       = aws_s3_bucket.connect.id
  description = "bucket name for the connect instance"
}
output "connect_ctr_stream" {
  value       = aws_kinesis_firehose_delivery_stream.firehose.name
  description = "name of the kinesis firehose stream configured to accept connect call trace records (ctr)"
}

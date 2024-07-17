output "bucket_id" {
  description = "Value of the bucket id"
  value       = aws_s3_bucket.bucket.id
}

output "bucket_name" {
  description = "Name of the bucket"
  value       = aws_s3_bucket.bucket.bucket
}

output "bucket_arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.bucket.arn
}
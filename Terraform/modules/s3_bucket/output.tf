output "s3-bucket" {
  value=aws_s3_bucket.ameye-bucket
}

output "aws_s3_object" {
  value=aws_s3_object.myapp
}
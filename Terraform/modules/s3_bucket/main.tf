# resource "aws_s3_bucket" "my-s3-Bucket" {
#   bucket=var.s3-bucket-name
#   force_destroy = true
# }
resource "aws_s3_bucket" "ameye-bucket" {
  bucket= var.bucket_name
  force_destroy = true
}

resource "aws_s3_object" "myapp" {
    # bucket = "ameye-bucket"
    bucket=aws_s3_bucket.ameye-bucket.bucket
   for_each = fileset("modules/s3_bucket/myapp/", "**/*.*") 
   key = each.value
   source = "modules/s3_bucket/myapp/${each.value}"
   content_type = each.value
  # content_type = lookup(var.mime_types, each.value, "binary/octet-stream")

  
}
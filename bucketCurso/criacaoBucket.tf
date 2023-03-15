resource "aws_s3_bucket" "criacao-bucket" {
  bucket = var.bucket_name
  tags   = var.bucket_tags
}
resource "aws_s3_bucket_acl" "bucket-acl-teste" {
  bucket = var.bucket_name
  acl    = var.bucket_type_acl
}

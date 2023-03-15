resource "aws_s3_bucket" "criacao-bucket_1" {
  bucket = var.bucket_name_1
  tags   = var.bucket_tags
}
resource "aws_s3_bucket" "criacao-bucket_2" {
  bucket = var.bucket_name_2
  tags   = var.bucket_tags
}

resource "aws_s3_bucket_acl" "bucket-acl-teste" {
  bucket = var.bucket_name_1
  acl    = var.bucket_type_acl
}

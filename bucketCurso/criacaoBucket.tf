resource "aws_s3_bucket" "criacao_bucket_1" {
  bucket = var.bucket_name_1
  tags   = var.bucket_tags
}
resource "aws_s3_bucket" "criacao_bucket_2" {
  bucket = var.bucket_name_2
  tags   = var.bucket_tags
}

resource "aws_s3_bucket_acl" "bucket_acl_teste" {
  bucket = var.bucket_name_1
  acl    = var.bucket_type_acl
  depends_on = [
    aws_s3_bucket.criacao_bucket_1
  ]
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.bucket_name

  tags = {
    Name = "${var.bucket_name}"
    Terraform = "true"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  count  = var.object_ownership == "BucketOwnerEnforced" ? 0 : 1
  bucket = aws_s3_bucket.bucket.id
  acl    = var.acl_mode
}

resource "aws_s3_bucket_versioning" "ver" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = var.versioning_mode
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket" {
  bucket = aws_s3_bucket.bucket.id

  rule {
    object_ownership = var.object_ownership
  }
}
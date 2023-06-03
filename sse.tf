resource "aws_s3_bucket_server_side_encryption_configuration" "main" {
  count  = (var.encryption == true) ? 1 : 0
  bucket = aws_s3_bucket.main.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = var.kms_key_id
    }
  }
}
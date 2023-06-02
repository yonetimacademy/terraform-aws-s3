resource "aws_s3_bucket" "main" {
  bucket        = "${var.tenant}-${var.name}-${var.bucket_name}-${random_id.shuffle.hex}-${var.environment}"
  force_destroy = var.force_destroy

  tags = {
    Name        = "${var.tenant}-${var.name}-${var.bucket_name}-${random_id.shuffle.hex}-${var.environment}"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "Magicorn"
    Terraform   = "yes"
  }
}
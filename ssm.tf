resource "aws_ssm_parameter" "name" {
  name        = "/${var.tenant}/${var.name}/${var.environment}/s3/${var.bucket_name}/name"
  description = "Managed by yonetimacademy"
  type        = "SecureString"
  value       = aws_s3_bucket.main.id

  tags = {
    Name        = "${var.tenant}-${var.name}-${var.environment}-s3-${var.bucket_name}-name"
    Tenant      = var.tenant
    Project     = var.name
    Environment = var.environment
    Maintainer  = "yonetimacademy"
    Terraform   = "yes"
  }
}
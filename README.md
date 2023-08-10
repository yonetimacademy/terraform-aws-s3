# terraform-aws-s3

Cloud&Cloud made Terraform Module for AWS Provider
--
```
module "s3" {
  source         = "yonetimacademy/s3/aws"
  version        = "0.0.1"
  tenant         = var.tenant
  name           = var.name
  environment    = "test"
  encryption     = true ## 1
  kms_key_id     = var.s3_key_id[0]

  # S3 Configuration
  bucket_name   = "testbucket"
  force_destroy = false

  versioning = {
    enabled    = false
    mfa_delete = false
  }

  cors_rule = jsonencode([{
    allowed_methods = ["GET", "HEAD"]
    allowed_origins = ["*"]
    allowed_headers = ["*"]
    expose_headers  = ["x-amz-meta-custom-header"]
    max_age_seconds = "900"
  }])
}
```

## Notes
1) Works better with yonetimacademy-aws-kms module.
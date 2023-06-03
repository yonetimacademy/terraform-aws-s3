# terraform-aws-s3

Magicorn made Terraform Module for AWS Provider
--
```
module "s3" {
  source         = "magicorntech/s3/aws"
  version        = "0.0.3"
  tenant         = var.tenant
  name           = var.name
  environment    = "test"
  encryption     = true # 1
  kms_key_id     = var.s3_key_id

  # S3 Configuration
  bucket_name   = "testbucket"
  force_destroy = false

  versioning = {
    enabled    = false
    mfa_delete = false
  }
}
```

## Notes
1) Works better with magicorn-aws-kms module.
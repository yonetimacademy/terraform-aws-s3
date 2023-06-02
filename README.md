# terraform-aws-s3

Magicorn made Terraform Module for AWS Provider
--
```
module "s3" {
  source         = "magicorntech/s3/aws"
  version        = "0.0.2"
  tenant         = var.tenant
  name           = var.name
  environment    = "test"

  # S3 Configuration
  bucket_name   = "testbucket"
  force_destroy = false

  versioning = {
    enabled    = false
    mfa_delete = false
  }
}
```
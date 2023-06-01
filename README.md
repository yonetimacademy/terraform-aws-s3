# terraform-aws-s3

Magicorn made Terraform Module for AWS Provider
--
```
module "s3" {
  source         = "magicorntech/s3/aws"
  version        = "0.0.1"
  tenant         = var.tenant
  name           = var.name
  environment    = "test"

  # S3 Configuration
  bucket_name    = "testbucket"
  force_destroy  = false
  versioning     = false
  mfa_delete     = false
}
```
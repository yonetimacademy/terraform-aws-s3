variable "tenant" {}
variable "name" {}
variable "environment" {}
variable "encryption" {}
variable "kms_key_id" {}
variable "bucket_name" {}
variable "force_destroy" {}
variable "versioning" {}
variable "cors_rule" {}
variable "static_web_hosting" {
  default = false
}

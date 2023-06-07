data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

locals {
  cors_rules = try(jsondecode(var.cors_rule), var.cors_rule)
}

resource "random_id" "shuffle" {
  byte_length = 8
}
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}

resource "random_id" "shuffle" {
  byte_length = 8
}
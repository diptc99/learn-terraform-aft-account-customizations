data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "prod_bucket" {
  bucket = "aft-prod-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "prod-bucket"
    Environment = "Prod"
  }
}
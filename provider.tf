
data "aws_secretsmanager_secret_version" "aws_creds" {
    secret_id = "terraform/aws-credentials"
}

locals {
  aws_credentials = jsondecode((data.aws_secretsmanager_secret_version.aws_creds.secret_string))
}


provider "aws" {
  region     = var.aws_region
  access_key = local.aws_credentials.aws_access_key_id
  secret_key = local.aws_credentials.aws_secret_access_key
}
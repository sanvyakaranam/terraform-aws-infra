terraform {
  backend "s3" {
    bucket         = "poc01-terraform-state-bucket"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "poc01-terraform-state-lock"
    encrypt        = true
  }
}
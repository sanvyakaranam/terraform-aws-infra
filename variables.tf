variable "aws_region" {
  description = "AWS region"
}

variable "aws_access_key" {
  description = "AWS Access Key"
  sensitive   = true
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  sensitive   = true
}

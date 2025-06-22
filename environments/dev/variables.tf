variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
}

variable "app_subnet_cidr" {
  description = "App subnet CIDR block"
  type        = string
}

variable "db_subnet_cidr" {
  description = "DB subnet CIDR block"
  type        = string
}

variable "az1" {
  description = "Availability Zone 1"
  type        = string
}

variable "az2" {
  description = "Availability Zone 2"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "aws_region" {
  description = "AWS region"
  type        = string
}
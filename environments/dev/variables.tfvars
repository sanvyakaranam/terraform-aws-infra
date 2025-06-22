aws_region = "us-east-1"
vpc_cidr = "10.0.0.0/16"
app_subnet_cidr = "10.0.1.0/24"
db_subnet_cidr = "10.0.2.0/24"
az1 = "us-east-1a"
az2 = "us-east-1b"
ami_id = "ami-09e6f87a47903347c"
instance_type = "t2.micro"


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

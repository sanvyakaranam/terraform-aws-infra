variable "vpc_cidr" {
    description = "VPC CIDR Block" 
    }

variable "env" {
    description = "Environment identifier"
  
}

variable "app_subnet_cidr" {}
variable "db_subnet_cidr" {}
variable "az1" {}
variable "az2" {}
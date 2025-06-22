variable "vpc_cidr" {
    description = "VPC CIDR Block" 
    type = string
    }

variable "env" {
    description = "Environment identifier"
    type = string
}

variable "app_subnet_cidr" {
    description = "CIDR block for public app subnet"
    type = string
}
variable "db_subnet_cidr" {
    description = "CIDR block for private db subnet"
    type = string
}
variable "az1" {
    description = "Availability zone for app subnet"
    type = string
}
variable "az2" {
    description = "Availability zone for db subnet"
    type = string
}
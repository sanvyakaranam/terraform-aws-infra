resource "aws_vpc" "vpc_poc_01" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "${var.env}-vpc"
    }
  
}

resource "aws_subnet" "app" {
    vpc_id = aws_vpc.vpc_poc_01.id
    cidr_block = var.app_subnet_cidr
    availability_zone = var.az1
    tags = {Name = "${var.env}-app-subnet"}
  
}

resource "aws_subnet" "db" {
    vpc_id =  aws_vpc.vpc_poc_01.id
    cidr_block = var.db_subnet_cidr
    availability_zone = var.az2
    tags = {Name = "${var.env}-db-subnet"}
  
}
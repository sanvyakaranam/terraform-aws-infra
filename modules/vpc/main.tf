resource "aws_vpc" "vpc_poc_01" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "${var.env}-vpc"
    }
  
}

resource "aws_internet_gateway" "IGW-poc-01" {
  vpc_id = aws_vpc.vpc_poc_01.id
  tags = {
    Name = "${var.env}-igw"
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

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc_poc_01.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW-poc-01.id
  }
  tags = {
    Name = "${var.env}-public-rt"
  }
  
}

resource "aws_route_table_association" "app" {
    subnet_id = aws_subnet.app.id
    route_table_id = aws_route_table.public.id 
}
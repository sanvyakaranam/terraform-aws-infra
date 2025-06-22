output "vpc_id" {
    value = aws_vpc.vpc_poc_01.id
  
}

output "app_subnet_id" {
  value = aws_subnet.app.id
}
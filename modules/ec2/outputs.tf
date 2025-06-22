output "instance_id" {
  value = aws_instance.ec2_poc-01.id
}

output "public_ip" {
    value = aws_instance.ec2_poc-01.public_ip
  
}
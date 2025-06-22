resource "aws_instance" "ec2_poc-01" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = var.key_name

    tags = {
      Name = "${var.env}-ec2-poc-01"
    }
  
}
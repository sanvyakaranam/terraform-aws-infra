variable "ami_id" {}
variable "instance_type" { }
variable "subnet_id" {}
variable "env" {}
variable "key_name" {
    description = "key pair name to ssh into EC2"
    type = string 
}
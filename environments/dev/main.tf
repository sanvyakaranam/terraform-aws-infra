module "vpc" {
    source = "../../modules/vpc"
    vpc_cidr = var.vpc_cidr
    app_subnet_cidr = var.app_subnet_cidr
    az1 = var.az1
    az2 = var.az2
    env = "dev"
}

module "keypair" {
    source = "../../modules/keypair"
    env = "dev"
}

module "ec2" {
    source = "../../modules/ec2"
    ami_id = var.ami_id
    instance_type = var.instance_type
    subnet_id = module.vpc.app_subnet_id
    key_name = module.keypair.key_name
    env = "dev"
}

module "s3" {
  source = "../../modules/s3"
  env = "dev"
}
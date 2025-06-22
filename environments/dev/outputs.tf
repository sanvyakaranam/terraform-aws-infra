output "vpc_id" {
  description = "VPC ID created"
  value       = module.vpc.vpc_id
}

output "app_subnet_id" {
  description = "App subnet ID"
  value       = module.vpc.app_subnet_id
}

output "db_subnet_id" {
  description = "DB subnet ID"
  value       = module.vpc.db_subnet_id
}

output "keypair_name" {
  description = "Keypair name used"
  value       = module.keypair.key_name
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2.instance_id
}

output "ec2_public_ip" {
  description = "EC2 public IP"
  value       = module.ec2.public_ip
}

output "s3_bucket_name" {
  description = "S3 bucket name"
  value       = module.s3.bucket_name
}



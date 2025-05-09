output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "vpc_cidr" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

output "subnet_id" {
  description = "The ID of the subnet"
  value       = module.subnet.subnet_id
}

output "subnet_cidr" {
  description = "The CIDR block of the subnet"
  value       = module.subnet.subnet_cidr_block
}

output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = module.ec2.instance_id
}
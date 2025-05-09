module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tags = var.vpc_tags
}

module "subnet" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone
  subnet_tags = var.subnet_tags
  aws_subnet_name = "main-subnet"  # Adding the required parameter
}

module "ec2" {
  source = "./modules/ec2"
  instance_ami = var.instance_ami
  instance_type = var.instance_type
  subnet_id = module.subnet.subnet_id
  tags = var.ec2_tags
}
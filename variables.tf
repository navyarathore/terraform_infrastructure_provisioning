variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

# variable "aws_profile" {
#   description = "AWS CLI profile to use for authentication"
#   type        = string
#   default     = "default"
# }

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = map(string)
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
}

variable "subnet_tags" {
  description = "Tags for the subnet"
  type        = map(string)
}

variable "instance_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ec2_tags" {
  description = "Tags for the EC2 instance"
  type        = map(string)
}
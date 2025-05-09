variable "instance_ami" {
 type = string 
}

variable "instance_type" {
 type = string 
}

variable "tags" {
  type = map(string)
}

variable "subnet_id" {
  type = string
  description = "The ID of the subnet where the EC2 instance will be launched"
}
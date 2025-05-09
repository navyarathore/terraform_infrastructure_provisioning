# AWS Infrastructure Provisioning with Terraform

This project uses Terraform to provision a basic AWS infrastructure consisting of a VPC, Subnet, and EC2 instance in a modular and reusable way.

This is task 2, as a part of my DevOps specialization coursework.

## Project Structure

```
.
├── main.tf              # Main Terraform configuration file
├── output.tf            # Output values from the infrastructure
├── providers.tf         # AWS provider configuration
├── terraform.tfvars     # Variable values for the project
├── variables.tf         # Variable declarations
├── versions.tf          # Terraform and provider version constraints
│
└── modules/             # Reusable modules
    ├── ec2/             # EC2 instance module
    │   ├── main.tf
    │   ├── output.tf
    │   └── variables.tf
    ├── subnets/         # Subnet module
    │   ├── main.tf
    │   ├── output.tf
    │   └── variables.tf
    └── vpc/             # VPC module
        ├── main.tf
        ├── output.tf
        └── variables.tf
```

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) (>= 1.0.0)
- AWS CLI configured with appropriate credentials
- Basic understanding of AWS services (VPC, Subnets, EC2)

## Module Descriptions

### VPC Module
Creates a Virtual Private Cloud (VPC) in AWS with customizable CIDR block and tags.

### Subnet Module
Creates a subnet within the VPC with configurable CIDR block, availability zone, and tags.

### EC2 Module
Provisions an EC2 instance in the specified subnet with configurable AMI, instance type, and tags.

## Variables

| Name | Description | Type |
|------|-------------|------|
| aws_region | AWS region to deploy resources | string |
| vpc_cidr_block | CIDR block for the VPC | string |
| vpc_tags | Tags for the VPC | map(string) |
| subnet_cidr_block | CIDR block for the subnet | string |
| availability_zone | Availability Zone for the subnet | string |
| subnet_tags | Tags for the subnet | map(string) |
| instance_ami | AMI ID for the EC2 instance | string |
| instance_type | EC2 instance type | string |
| ec2_tags | Tags for the EC2 instance | map(string) |

## Outputs

| Name | Description |
|------|-------------|
| vpc_id | The ID of the VPC |
| vpc_cidr | The CIDR block of the VPC |
| subnet_id | The ID of the subnet |
| subnet_cidr | The CIDR block of the subnet |
| ec2_instance_id | The ID of the EC2 instance |

## Usage

1. Clone this repository
2. Navigate to the project directory
3. Update the `terraform.tfvars` file with your desired values
4. Initialize the Terraform working directory:
```
terraform init
```

5. See what changes will be applied:
```
terraform plan
```

6. Apply the changes:
```
terraform apply
```

7. To destroy the infrastructure when no longer needed:
```
terraform destroy
```

## Customization

You can customize this project by:

1. Modifying the `terraform.tfvars` file with different values
2. Adding more resources to the existing modules
3. Creating new modules for additional AWS services
4. Extending the main configuration to use additional modules

## Last Updated
May 9, 2025
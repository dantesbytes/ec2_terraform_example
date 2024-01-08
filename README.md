# Create an EC2 using Terraform

## Steps
install terraform 
install aws cli
create a  user and give access to create an ec2
configure cli with aws config and pass in credential detials 
create a .ts file 

# terraform block
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 2.15"
        }
    }
}


This block specifies the required providers for the Terraform configuration. In this case, it declares that the AWS provider is required, and the version should be at least 2.15, but less than 3.0.

# Provider 
provider "aws" {
    region = "us-east-1"
}

This block configures the AWS provider. It sets the AWS region to "us-east-1". You can modify the region based on your AWS environment.

# Resource Block
resource "aws_instance" "name" {
    ami           = "ami-079db87dc4c10ac91"
    instance_type = "t2.micro"
}

This block defines the AWS EC2 instance resource. The resource type is aws_instance, and it is given the name "name" (you can replace "name" with a more meaningful identifier).
ami specifies the Amazon Machine Image (AMI) ID to use for the instance. In this example, it's set to "ami-079db87dc4c10ac91", which is a specific AMI. You might want to replace this with the AMI ID that suits your needs.
instance_type specifies the type of the EC2 instance. In this case, it's set to "t2.micro", which is a cost-effective instance type suitable for low to moderate traffic.

# Notes
Notes
Before applying this configuration, ensure that you have AWS credentials configured on your machine.
Run terraform init to initialize the Terraform configuration.
Run terraform apply to create the specified AWS resources.


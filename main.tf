terraform {
    required_providers {

        aws = {
            source = "hashicorp/aws"
            version = "~> 2.15"
        }
    }
}

provider "aws" {
    region = "us-east-1"

}

resource "aws_instance" "name" {

    ami = "ami-079db87dc4c10ac91"
    instance_type = "t2.micro"
  
}




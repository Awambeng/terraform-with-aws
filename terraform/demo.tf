# My first Terraform Configuration.

# Cofigure aws provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = var.region
}

# Define an EC2 instance resource
resource "aws_instance" "my_first_web_server" {
    # define the instance name
    ami = "ami-00beae93a2d981137"
    instance_type = "t2.micro"
    key_name = "my-aws-key-pair"
    tags = {
        Name = var.instance_name
    }
}






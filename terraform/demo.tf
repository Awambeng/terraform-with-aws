# My first Terraform Configuration.

# Declaring variables for access and secret key.
# variable "access_key" {
#   type = string
#   description = "Access key for your resources"
#   sensitive = true  # Mark this sensitive to avoid printing in logs
# }

# variable "secret_key" {
#   type = string
#   description = "Secret key for your resources"
#   sensitive = true  # Mark this sensitive to avoid printing in logs
# }

# variable "region" {
#     type = string
#     description = "Region of the resources"
# }

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
    # access_key = "access_key"
    # secret_key = "secret_key"
    region = "us-east-1"
}

# Define an EC2 instance resource
resource "aws_instance" "my_first_web_server" {
    # define the instance name
    ami = "ami-00beae93a2d981137"
    instance_type = "t2.micro"
    key_name = "my-aws-key-pair"
    tags = {
        Name = "Demo"
    }
}






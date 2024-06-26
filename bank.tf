terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
#Configuring the AWS provider
provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "master-bank" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.medium"

  tags = {
    Name = "Banking-master"
 }
}
resource "aws_instance" "node-bank" {
  ami           = "ami-04b70fa74e45c3917"
  instance_type = "t2.micro"

  tags = {
    Name = "Banking-node"
 }
}

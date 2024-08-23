terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.61.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = ap-south-1
}

##### Try to create one ubuntu server
resource "aws_instance" "this" {
  ami                     = ami-0522ab6e1ddcc7055
  instance_type           = t2.micro
  key_name                = MyAWSKey

  tags = var.tags

}

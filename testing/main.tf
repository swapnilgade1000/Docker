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
  instance_type           = var.instance_type
  key_name                = var.key_name

  tags = var.tags

}

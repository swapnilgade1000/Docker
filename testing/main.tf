provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

##### Try to create one ubuntu server
resource "aws_instance" "this" {
  ami                     = "ami-0522ab6e1ddcc7055"
  instance_type           = "t2.micro"
  key_name                = "MyAWSKey"

  tags = var.tags
}


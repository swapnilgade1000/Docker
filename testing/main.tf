provider "aws" {
    version = "~> 5.0"
    region = "ap-south-1"
}


resource "aws_instance" "this" {
  ami                     = "ami-0522ab6e1ddcc7055"
  instance_type           = "t2.micro"
  key_name                = "MyAWSKey"

  tags = var.tags
}


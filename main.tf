terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
  tags = {
    "Name" : "webserver"
    yor_trace = "233e9243-b1d8-45c6-85d1-3aa558e18330"
  }
}
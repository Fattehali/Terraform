terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "ali-terraform-bucket" 
    key    = "fattehali/terraform.tfstate"
  }    
}


provider "aws" {
  alias  = "south"
  region = "ap-south-1"
  access_key = "AKIA2EKXCST4AHTJ2X2N"
  secret_key = "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"
}



resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instancetype

  tags = {
    Name = "Ali"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


provider "aws" {
  alias  = "south"
  region = "ap-south-1"
  access_key = "AKIA2EKXCST4AHTJ2X2N"
  secret_key = "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"
}

module "ec2" {
    source = "modules/ec2"
}

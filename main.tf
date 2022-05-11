provider "aws" {
  alias  = "south"
  region = "ap-south-1"
  access_key = "AKIA2EKXCST4AHTJ2X2N"
  secret_key = "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"
}

module "ec2" {
    source = "./ec2_module"
}

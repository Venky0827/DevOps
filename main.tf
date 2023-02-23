provider "aws" {
  # these keys is used to create resources by accessing your account

  access_key = var.access_key    
  secret_key = var.secret_key
  version = "4.51.0"
  region     = var.regions
}

terraform {
  backend "s3" {
    bucket = "devopsb15terraform"  # enter s3 bucket name which is already available in your aws account
    key    = "terraform/myterraform.tfstate"
    region = "us-east-1"
  }
}

# ===================---------- STORAGE ----------------=============================

# resource "aws_s3_bucket" "devopsb14terraform" {
#   bucket = "devopsb14terraform"
#   acl    = "private"
#   tags = {
#     Name = "devopsb14terraform"
#   }
# }


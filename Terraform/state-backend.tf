terraform {
  backend "s3" {
    bucket = "devopsb14terraform"
    key    = "terraform/myterraform.tfstate"
    region = "us-east-1"
  }
}
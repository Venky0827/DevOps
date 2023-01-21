provider "aws" {
    access_key = "xxxxxxxxxxxxxxxxxxxxxx"
    secret_key = "xxxxxxxxxxxxxxxxxxxxx"
    region = "us-east-1"
}

resource "aws_vpc" "default" {
    cidr_block = "10.0.0.0/16"
    enable_dns_hostnames = true
    tags = {
        Name = "terraform_vpc"
        Owner = "Venkatesh Bandaru"
    }
}

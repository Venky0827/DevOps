provider "aws" {
    access_key = var.access_key
    secret_key = var.secret_key
    region = "us-east-1"
}

resource "aws_vpc" "VPC1" {
    cidr_block = var.cidr_block1
    enable_dns_hostnames = true
    tags = {
        Name = "vpc_name1"
        Owner = "Venkatesh Bandaru"
    }
}

resource "aws_vpc" "VPC2" {
    cidr_block = var.cidr_block2
    enable_dns_hostnames = true
    tags = {
        Name = "vpc_name2"
        Owner = "Venkatesh Bandaru"
    }
}
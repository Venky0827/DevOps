resource "aws_vpc" "VPC1" {
    cidr_block = var.cidr_block1
    enable_dns_hostnames = true
    tags = {
        Name = "vpc_name1"
    }
}

resource "aws_subnet" "SUBNET1" {
  vpc_id     = aws_vpc.VPC1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1_1"
  }
}
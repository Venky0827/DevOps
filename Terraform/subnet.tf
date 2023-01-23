resource "aws_subnet" "SUBNET1-11" {
  vpc_id     = aws_vpc.VPC1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet1_1"
  }
}

resource "aws_subnet" "SUBNET1-2" {
  vpc_id     = aws_vpc.VPC1.id
  cidr_block = "10.0.2.0/24"
  
  tags = {
    Name = "subnet1_2"
  }
}

resource "aws_subnet" "SUBNET2-1" {
  vpc_id     = aws_vpc.VPC2.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet2_1"
  }
}

resource "aws_subnet" "SUBNET2-2" {
  vpc_id     = aws_vpc.VPC2.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "subnet2_1"
  }
}
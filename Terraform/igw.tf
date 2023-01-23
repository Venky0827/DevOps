resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.VPC1.id

  tags = {
    Name = "VPC1-IGW"
  }
}
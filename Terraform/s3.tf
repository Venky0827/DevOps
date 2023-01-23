resource "aws_s3_bucket" "devopsb14terraform" {
  bucket = "devopsb14terraform"
  acl    = "private"

  tags = {
    Name        = "devopsb14terraform"
  }
}

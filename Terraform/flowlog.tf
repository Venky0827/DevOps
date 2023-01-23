resource "aws_flow_log" "example" {
  log_destination      = "${aws_s3_bucket.devopsb14terraform.arn}"
  log_destination_type = "s3"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.VPC1.id
}
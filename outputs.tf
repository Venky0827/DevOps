# output "VPC-id" {
#     description = "List of IDs of instances"
#     value       = "${aws_vpc.VPC.tags.Name}-${aws_vpc.VPC.id}"
#   }

# output "Public-Subnet-ids" {
#   description = "List of subnet ids"
#   value = aws_subnet.PUBLIC-SUBNET.*.tags.Name
# }

# output "Private-Subnet-ids" {
#   description = "List of subnet ids"
#   value = ["${aws_subnet.PRIVATE-SUBNET.*.tags.Name}"]##-${aws_subnet.PRIVATE-SUBNET.*.id}"] #,"${aws_subnet.private_subnets.*.id}"]
# }

# # output "Instance-ids" {
# #   description = "List of Instances ids"
# #   value = "${aws_instance.Instance.*.id}"
# # }
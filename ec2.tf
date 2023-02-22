resource "aws_instance" "Instance" {
              count = 1
                ami = lookup(var.amis,var.regions)
  #availability_zone = "us-east-1a"
      instance_type = "t2.micro"
           key_name = "Lapkey"
          subnet_id = "${element(aws_subnet.PUBLIC-SUBNET.*.id,count.index)}"
  vpc_security_group_ids = "${aws_security_group.allow_all.*.id}"
  associate_public_ip_address = true
  tags ={
    Name = "${var.vpc_name}-server-${count.index+1}"
  }

  user_data = <<-EOF
  #!/bin/bash
  sudo apt update -y
  sudo apt install nginx -y
  sudo service nginx start
  sudo apt install -y openjdk-11-jdk unzip
  curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo tee  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]  https://pkg.jenkins.io/debian-stable binary/ | sudo tee  /etc/apt/sources.list.d/jenkins.list > /dev/null
  sudo apt-get update
  sudo apt-get install jenkins -y
  EOF
}
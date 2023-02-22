access_key = "xxxxx"
secret_key = "xxxxx"
regions = "us-east-1" #,"us-east-2","us-east-3"]

vpc_name = "Git"
cidr_block = "10.0.0.0/16"

public_cidrs = ["10.0.1.0/24"] #,"10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]

private_cidrs = ["10.0.10.0/24","10.0.20.0/24","10.0.30.0/24","10.0.40.0/24"]
amis = {
    us-east-1 = "ami-0557a15b87f6559cf" # ubuntu LTS 22.04
    #us-east-2 = ""
    #us-east-3 = ""
}




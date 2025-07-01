
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}
###################################################EC2################################################################
resource "aws_instance" "ec2" {
    count = 1
    ami = "ami-020cba7c55df1f615" # ubuntu
    key_name = "newkey"
    instance_type = "t2.nano"
    vpc_security_group_ids = [ aws_security_group.securitygroup.id ]
    subnet_id                 = module.vpc.public_subnets[0] 
    root_block_device {
    #volume_size = 8
    
    volume_size = var.env == "prod" ? 20 : var.ec2_default_root_volume_size
    volume_type = "gp3"
  }
    user_data = file("install_nginx.sh") # this is the user data script that will run when the instance is launched
    tags = {
      Name = "My first EC2 instance"
    }
    depends_on = [ aws_security_group.securitygroup ]
}

##################################################################################################################
# data "aws_vpc" "defaultvpc" {
#   default = true
# }
#data = data block is used to read existing resources in your AWS account rather than creating new ones.

#################################################################################################################


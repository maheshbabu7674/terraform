 provider "aws" {
   region     = "eu-central-1"
   access_key = "<access_key>"
   secret_key = "<secret_key>"
   
}

locals {
  instance_name = "${terraform.workspace}-instance" 
}

resource "aws_instance" "ec2_example" {

    ami = "ami-0767046d1677be5a0" 

    instance_type = var.instance_type

    tags = {
      Name = local.instance_name
    }
}

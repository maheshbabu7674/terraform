terraform {
  backend "s3" {
    bucket = "mahesh-terraform"
    key    = "key/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "dynamodb-state-locking"
  }
}

provider "aws" {
   region     = "eu-central-1"
   access_key = "<INSERT_YOUR_ACCESS_KEY>"
   secret_key = "<INSERT_YOUR_SECRET_KEY>"
}

resource "aws_instance" "ec2_example" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  var.instance_type

   tags = {
           Name = "Terraform EC2"
   }
}

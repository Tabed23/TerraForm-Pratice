provider "aws" {
  region = "us-east-1"
}

variable "my_instance_type" {
  type = string
  default = "t2.micro"  # if we dont pass anything then a propmt will come and ask for the instance type
  description = "my t2 mico instaance"
}

resource "aws_instance" "firstinstance" {
   ami = "" #instance id
   instance_type = var.my_instance_type
   tags = var.instance_tags
}
